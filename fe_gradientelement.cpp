#include "fe_gradientelement.h"

#include <QBrush>
#include <QPen>

FE_GradientElement::FE_GradientElement()
{
	setRect(-5, -5, 10, 10);
	setColor(Qt::gray);
	setFlag(QGraphicsItem::ItemIsMovable);
	m_Passive = false;
}

void FE_GradientElement::setColor(const QColor &c)
{
	setPen(QPen(c.darker(), 1, m_Passive ? Qt::DotLine : Qt::SolidLine));
	setBrush(c);
}

QColor FE_GradientElement::color() const
{
	return brush().color();
}

void FE_GradientElement::setPassive(bool p)
{
	m_Passive = p;

	setPen(QPen(brush().color().darker(), 1, p ? Qt::DotLine : Qt::SolidLine));
}

bool FE_GradientElement::passive() const
{
	return m_Passive;
}

QPointF FE_GradientElement::pos() const
{
	return scenePos();
}

int FE_GradientElement::type() const
{
	return Type;
}

void FE_GradientElement::mouseReleaseEvent(QGraphicsSceneMouseEvent *event)
{
	QGraphicsEllipseItem::mouseReleaseEvent(event);
}
