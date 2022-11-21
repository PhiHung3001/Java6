package fpoly.carshop.service;

import org.springframework.stereotype.Service;

import fpoly.carshop.entity.Position;

import java.util.List;


public interface PositionService {
    List<Position> finAll();
}
