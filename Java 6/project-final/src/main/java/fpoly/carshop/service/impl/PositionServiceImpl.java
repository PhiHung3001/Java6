package fpoly.carshop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.carshop.entity.Position;
import fpoly.carshop.repository.PositionRepository;
import fpoly.carshop.service.PositionService;

import java.util.List;

@Service
public class PositionServiceImpl implements PositionService {
    @Autowired
    private PositionRepository positionRepository;
    @Override
    public List<Position> finAll() {
        return this.positionRepository.findAll();
    }
}
