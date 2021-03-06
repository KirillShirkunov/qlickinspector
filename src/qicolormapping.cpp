/**
 * Copyright 2017 Thomas Ascher <thomas.ascher@gmx.at>
 * SPDX-License-Identifier: LGPL-3.0+
 */

#include "qicolormapping.h"
#include <QtGui/QColor>

QIColorMapping::QIColorMapping()
    :maxCount(0)
{

}

QIColorMapping::QIColorMapping(unsigned int maxCount)
{
    this->maxCount = maxCount;
}

QColor QIColorMapping::map(unsigned int count) const
{
    const double MAX_HUE = 0.7;
    double hue = MAX_HUE;

    if (maxCount > 0)
    {
        if (count > maxCount)
            count = maxCount;

        hue -= MAX_HUE * (count / static_cast<double>(maxCount));
    }

    return QColor::fromHsvF(hue, 1.0, 1.0, 0.5);
}
