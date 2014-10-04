#ifndef PLAYER_H
#define PLAYER_H

class Player {
    private:
        int health;
    public:
        Player();
        ~Player();
        void setHealth(int _health);
        int getHealth();
};

#endif // PLAYER_H
