func positionDescription(point: (x: Int, y: Int)) -> String {
    switch point {
    case (0, 0):
        return "\(point) is at the Origin"
    case (_, 0):
        return "\(point) is on the X-Axis"
    case (0, _):
        return "\(point) is on the Y-Axis"
    case let (x, y) where x > 0 && y > 0:
        return "\(point) is in the First Quadrant"
    case let (x, y) where x < 0 && y > 0:
        return "\(point) is in the Second Quadrant"
    case let (x, y) where x < 0 && y < 0:
        return "\(point) is in the Third Quadrant"
    case let (x, y) where x > 0 && y < 0:
        return "\(point) is in the Fourth Quadrant"
    default:
        return "\(point) is in an Unknown Position"
    }
}

print(positionDescription(point: (x: 3, y: -3)))