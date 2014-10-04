#include "Player.h"

Player::Player()
{
    health = 0;
}

Player::~Player()
{

}

void Player::setHealth(int _health)
{
    health = _health;
}

int Player::getHealth()
{
    return health;
}
