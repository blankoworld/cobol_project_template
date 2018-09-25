# Présentation

Template pour créer un projet COBOL85 sous GNU/Linux.

# ATTENTION

Une option a été rajoutée pour ne prendre en compte que les programmes en COBOL85 !

# Pré-requis

Nécessite [GnuCOBOL](https://sourceforge.net/projects/open-cobol/).

Par exemple sous ArchLinux, à l'aide de [trizen](https://github.com/trizen/trizen) : 

```bash
trizen -S gnu-cobol
```
# Où mettre le programme ?

Dans le fichier **project.cob**.

# Utilisation

## Lancer le programme

```bash
make run
```

## Juste compiler le programme

```bash
make build
```

## Enlever une version précédente du programme compilé

```bash
make clean
```

## S'en battre les gonades

```bash
make
```

Ce qui compile le programme et le lance.
