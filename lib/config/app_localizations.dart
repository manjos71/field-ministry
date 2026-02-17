import 'package:flutter/material.dart';

/// Idiomas suportados
enum AppLanguage { pt, en, es, de, fr, it, ru }

/// Classe de internacionalização do aplicativo
class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations) ??
        AppLocalizations(const Locale('en'));
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// Idiomas suportados
  static const List<Locale> supportedLocales = [
    Locale('pt', 'BR'),
    Locale('pt'),
    Locale('en', 'US'),
    Locale('en'),
    Locale('es'),
    Locale('de'),
    Locale('fr'),
    Locale('it'),
    Locale('ru'),
  ];

  /// Código do idioma atual
  AppLanguage get _lang {
    switch (locale.languageCode) {
      case 'pt': return AppLanguage.pt;
      case 'es': return AppLanguage.es;
      case 'de': return AppLanguage.de;
      case 'fr': return AppLanguage.fr;
      case 'it': return AppLanguage.it;
      case 'ru': return AppLanguage.ru;
      default: return AppLanguage.en;
    }
  }

  // ==================== GERAL ====================
  String get appName => _t({
    AppLanguage.pt: 'Assistente da Pregação',
    AppLanguage.en: 'Field Ministry',
    AppLanguage.es: 'Ministerio del Campo',
    AppLanguage.de: 'Predigtdienst',
    AppLanguage.fr: 'Ministère du Champ',
    AppLanguage.it: 'Ministero del Campo',
    AppLanguage.ru: 'Полевое служение',
  });

  String get ok => _t({
    AppLanguage.pt: 'OK',
    AppLanguage.en: 'OK',
    AppLanguage.es: 'OK',
    AppLanguage.de: 'OK',
    AppLanguage.fr: 'OK',
    AppLanguage.it: 'OK',
    AppLanguage.ru: 'ОК',
  });

  String get cancel => _t({
    AppLanguage.pt: 'Cancelar',
    AppLanguage.en: 'Cancel',
    AppLanguage.es: 'Cancelar',
    AppLanguage.de: 'Abbrechen',
    AppLanguage.fr: 'Annuler',
    AppLanguage.it: 'Annulla',
    AppLanguage.ru: 'Отмена',
  });

  String get save => _t({
    AppLanguage.pt: 'Salvar',
    AppLanguage.en: 'Save',
    AppLanguage.es: 'Guardar',
    AppLanguage.de: 'Speichern',
    AppLanguage.fr: 'Enregistrer',
    AppLanguage.it: 'Salva',
    AppLanguage.ru: 'Сохранить',
  });

  String get delete => _t({
    AppLanguage.pt: 'Excluir',
    AppLanguage.en: 'Delete',
    AppLanguage.es: 'Eliminar',
    AppLanguage.de: 'Löschen',
    AppLanguage.fr: 'Supprimer',
    AppLanguage.it: 'Elimina',
    AppLanguage.ru: 'Удалить',
  });

  String get edit => _t({
    AppLanguage.pt: 'Editar',
    AppLanguage.en: 'Edit',
    AppLanguage.es: 'Editar',
    AppLanguage.de: 'Bearbeiten',
    AppLanguage.fr: 'Modifier',
    AppLanguage.it: 'Modifica',
    AppLanguage.ru: 'Редактировать',
  });

  String get add => _t({
    AppLanguage.pt: 'Adicionar',
    AppLanguage.en: 'Add',
    AppLanguage.es: 'Agregar',
    AppLanguage.de: 'Hinzufügen',
    AppLanguage.fr: 'Ajouter',
    AppLanguage.it: 'Aggiungi',
    AppLanguage.ru: 'Добавить',
  });

  String get close => _t({
    AppLanguage.pt: 'Fechar',
    AppLanguage.en: 'Close',
    AppLanguage.es: 'Cerrar',
    AppLanguage.de: 'Schließen',
    AppLanguage.fr: 'Fermer',
    AppLanguage.it: 'Chiudi',
    AppLanguage.ru: 'Закрыть',
  });

  String get confirm => _t({
    AppLanguage.pt: 'Confirmar',
    AppLanguage.en: 'Confirm',
    AppLanguage.es: 'Confirmar',
    AppLanguage.de: 'Bestätigen',
    AppLanguage.fr: 'Confirmer',
    AppLanguage.it: 'Conferma',
    AppLanguage.ru: 'Подтвердить',
  });

  String get error => _t({
    AppLanguage.pt: 'Erro',
    AppLanguage.en: 'Error',
    AppLanguage.es: 'Error',
    AppLanguage.de: 'Fehler',
    AppLanguage.fr: 'Erreur',
    AppLanguage.it: 'Errore',
    AppLanguage.ru: 'Ошибка',
  });

  String get loading => _t({
    AppLanguage.pt: 'Carregando...',
    AppLanguage.en: 'Loading...',
    AppLanguage.es: 'Cargando...',
    AppLanguage.de: 'Laden...',
    AppLanguage.fr: 'Chargement...',
    AppLanguage.it: 'Caricamento...',
    AppLanguage.ru: 'Загрузка...',
  });

  String get search => _t({
    AppLanguage.pt: 'Buscar',
    AppLanguage.en: 'Search',
    AppLanguage.es: 'Buscar',
    AppLanguage.de: 'Suchen',
    AppLanguage.fr: 'Rechercher',
    AppLanguage.it: 'Cerca',
    AppLanguage.ru: 'Поиск',
  });

  String get noResults => _t({
    AppLanguage.pt: 'Nenhum resultado',
    AppLanguage.en: 'No results',
    AppLanguage.es: 'Sin resultados',
    AppLanguage.de: 'Keine Ergebnisse',
    AppLanguage.fr: 'Aucun résultat',
    AppLanguage.it: 'Nessun risultato',
    AppLanguage.ru: 'Нет результатов',
  });

  // ==================== NAVEGAÇÃO ====================
  String get home => _t({
    AppLanguage.pt: 'Home',
    AppLanguage.en: 'Home',
    AppLanguage.es: 'Inicio',
    AppLanguage.de: 'Start',
    AppLanguage.fr: 'Accueil',
    AppLanguage.it: 'Home',
    AppLanguage.ru: 'Главная',
  });

  String get territories => _t({
    AppLanguage.pt: 'Territórios',
    AppLanguage.en: 'Territories',
    AppLanguage.es: 'Territorios',
    AppLanguage.de: 'Gebiete',
    AppLanguage.fr: 'Territoires',
    AppLanguage.it: 'Territori',
    AppLanguage.ru: 'Участки',
  });

  String get card => _t({
    AppLanguage.pt: 'Card',
    AppLanguage.en: 'Card',
    AppLanguage.es: 'Tarjeta',
    AppLanguage.de: 'Karte',
    AppLanguage.fr: 'Carte',
    AppLanguage.it: 'Scheda',
    AppLanguage.ru: 'Карточка',
  });

  String get reports => _t({
    AppLanguage.pt: 'Relatórios',
    AppLanguage.en: 'Reports',
    AppLanguage.es: 'Informes',
    AppLanguage.de: 'Berichte',
    AppLanguage.fr: 'Rapports',
    AppLanguage.it: 'Rapporti',
    AppLanguage.ru: 'Отчёты',
  });

  String get settings => _t({
    AppLanguage.pt: 'Config',
    AppLanguage.en: 'Settings',
    AppLanguage.es: 'Ajustes',
    AppLanguage.de: 'Einstellungen',
    AppLanguage.fr: 'Paramètres',
    AppLanguage.it: 'Impostazioni',
    AppLanguage.ru: 'Настройки',
  });

  // ==================== HOME ====================
  String get welcome => _t({
    AppLanguage.pt: 'Olá',
    AppLanguage.en: 'Hello',
    AppLanguage.es: 'Hola',
    AppLanguage.de: 'Hallo',
    AppLanguage.fr: 'Bonjour',
    AppLanguage.it: 'Ciao',
    AppLanguage.ru: 'Привет',
  });

  String get goodWorkInMinistry => _t({
    AppLanguage.pt: 'Bom trabalho no ministério!',
    AppLanguage.en: 'Good work in the ministry!',
    AppLanguage.es: '¡Buen trabajo en el ministerio!',
    AppLanguage.de: 'Gute Arbeit im Dienst!',
    AppLanguage.fr: 'Bon travail dans le ministère!',
    AppLanguage.it: 'Buon lavoro nel ministero!',
    AppLanguage.ru: 'Хорошей работы в служении!',
  });

  String get monthlyTime => _t({
    AppLanguage.pt: 'Tempo do Mês',
    AppLanguage.en: 'Monthly Time',
    AppLanguage.es: 'Tiempo del Mes',
    AppLanguage.de: 'Monatszeit',
    AppLanguage.fr: 'Temps du Mois',
    AppLanguage.it: 'Tempo Mensile',
    AppLanguage.ru: 'Время за месяц',
  });

  String get monthlyPlanning => _t({
    AppLanguage.pt: 'Planejamento do Mês',
    AppLanguage.en: 'Monthly Planning',
    AppLanguage.es: 'Planificación del Mes',
    AppLanguage.de: 'Monatsplanung',
    AppLanguage.fr: 'Planification Mensuelle',
    AppLanguage.it: 'Pianificazione Mensile',
    AppLanguage.ru: 'Планирование на месяц',
  });

  String get onTrack => _t({
    AppLanguage.pt: 'Em dia',
    AppLanguage.en: 'On Track',
    AppLanguage.es: 'Al día',
    AppLanguage.de: 'Auf Kurs',
    AppLanguage.fr: 'À jour',
    AppLanguage.it: 'In pari',
    AppLanguage.ru: 'В норме',
  });

  String get behind => _t({
    AppLanguage.pt: 'Atrasado',
    AppLanguage.en: 'Behind',
    AppLanguage.es: 'Atrasado',
    AppLanguage.de: 'Im Rückstand',
    AppLanguage.fr: 'En retard',
    AppLanguage.it: 'In ritardo',
    AppLanguage.ru: 'Отставание',
  });

  String get target => _t({
    AppLanguage.pt: 'Meta',
    AppLanguage.en: 'Target',
    AppLanguage.es: 'Meta',
    AppLanguage.de: 'Ziel',
    AppLanguage.fr: 'Objectif',
    AppLanguage.it: 'Obiettivo',
    AppLanguage.ru: 'Цель',
  });

  String get expected => _t({
    AppLanguage.pt: 'Esperado',
    AppLanguage.en: 'Expected',
    AppLanguage.es: 'Esperado',
    AppLanguage.de: 'Erwartet',
    AppLanguage.fr: 'Prévu',
    AppLanguage.it: 'Previsto',
    AppLanguage.ru: 'Ожидается',
  });

  String get yourName => _t({
    AppLanguage.pt: 'Seu Nome',
    AppLanguage.en: 'Your Name',
    AppLanguage.es: 'Tu Nombre',
    AppLanguage.de: 'Dein Name',
    AppLanguage.fr: 'Votre Nom',
    AppLanguage.it: 'Il Tuo Nome',
    AppLanguage.ru: 'Ваше имя',
  });

  String get enterYourName => _t({
    AppLanguage.pt: 'Digite seu nome',
    AppLanguage.en: 'Enter your name',
    AppLanguage.es: 'Ingresa tu nombre',
    AppLanguage.de: 'Geben Sie Ihren Namen ein',
    AppLanguage.fr: 'Entrez votre nom',
    AppLanguage.it: 'Inserisci il tuo nome',
    AppLanguage.ru: 'Введите ваше имя',
  });

  // ==================== ESTATÍSTICAS (CARDS) ====================
  String get territoriesCount => _t({
    AppLanguage.pt: 'Territórios',
    AppLanguage.en: 'Territories',
    AppLanguage.es: 'Territorios',
    AppLanguage.de: 'Gebiete',
    AppLanguage.fr: 'Territoires',
    AppLanguage.it: 'Territori',
    AppLanguage.ru: 'Участки',
  });

  String get interestedCount => _t({
    AppLanguage.pt: 'Interessados',
    AppLanguage.en: 'Interested',
    AppLanguage.es: 'Interesados',
    AppLanguage.de: 'Interessierte',
    AppLanguage.fr: 'Intéressés',
    AppLanguage.it: 'Interessati',
    AppLanguage.ru: 'Интересующиеся',
  });

  String get visitsCount => _t({
    AppLanguage.pt: 'Visitas',
    AppLanguage.en: 'Visits',
    AppLanguage.es: 'Visitas',
    AppLanguage.de: 'Besuche',
    AppLanguage.fr: 'Visites',
    AppLanguage.it: 'Visite',
    AppLanguage.ru: 'Посещения',
  });

  String get today => _t({
    AppLanguage.pt: 'Hoje',
    AppLanguage.en: 'Today',
    AppLanguage.es: 'Hoy',
    AppLanguage.de: 'Heute',
    AppLanguage.fr: "Aujourd'hui",
    AppLanguage.it: 'Oggi',
    AppLanguage.ru: 'Сегодня',
  });

  // ==================== TERRITÓRIOS ====================
  String get territory => _t({
    AppLanguage.pt: 'Território',
    AppLanguage.en: 'Territory',
    AppLanguage.es: 'Territorio',
    AppLanguage.de: 'Gebiet',
    AppLanguage.fr: 'Territoire',
    AppLanguage.it: 'Territorio',
    AppLanguage.ru: 'Участок',
  });

  String get newTerritory => _t({
    AppLanguage.pt: 'Novo Território',
    AppLanguage.en: 'New Territory',
    AppLanguage.es: 'Nuevo Territorio',
    AppLanguage.de: 'Neues Gebiet',
    AppLanguage.fr: 'Nouveau Territoire',
    AppLanguage.it: 'Nuovo Territorio',
    AppLanguage.ru: 'Новый участок',
  });

  String get territoryName => _t({
    AppLanguage.pt: 'Nome do Território',
    AppLanguage.en: 'Territory Name',
    AppLanguage.es: 'Nombre del Territorio',
    AppLanguage.de: 'Gebietsname',
    AppLanguage.fr: 'Nom du Territoire',
    AppLanguage.it: 'Nome del Territorio',
    AppLanguage.ru: 'Название участка',
  });

  String get neighborhoodOptional => _t({
    AppLanguage.pt: 'Bairro (opcional)',
    AppLanguage.en: 'Neighborhood (optional)',
    AppLanguage.es: 'Barrio (opcional)',
    AppLanguage.de: 'Stadtviertel (optional)',
    AppLanguage.fr: 'Quartier (optionnel)',
    AppLanguage.it: 'Quartiere (opzionale)',
    AppLanguage.ru: 'Район (необязательно)',
  });

  String get name => _t({
    AppLanguage.pt: 'Nome',
    AppLanguage.en: 'Name',
    AppLanguage.es: 'Nombre',
    AppLanguage.de: 'Name',
    AppLanguage.fr: 'Nom',
    AppLanguage.it: 'Nome',
    AppLanguage.ru: 'Имя',
  });

  String get neighborhood => _t({
    AppLanguage.pt: 'Bairro',
    AppLanguage.en: 'Neighborhood',
    AppLanguage.es: 'Barrio',
    AppLanguage.de: 'Stadtviertel',
    AppLanguage.fr: 'Quartier',
    AppLanguage.it: 'Quartiere',
    AppLanguage.ru: 'Район',
  });

  String deleteConfirmation(String name) {
    return _t({
      AppLanguage.pt: 'O território "$name" e todos os seus dados serão excluídos permanentemente.',
      AppLanguage.en: 'The territory "$name" and all its data will be permanently deleted.',
      AppLanguage.es: 'El territorio "$name" y todos sus datos serán eliminados permanentemente.',
      AppLanguage.de: 'Das Gebiet "$name" und alle seine Daten werden dauerhaft gelöscht.',
      AppLanguage.fr: 'Le territoire "$name" et toutes ses données seront supprimés définitivement.',
      AppLanguage.it: 'Il territorio "$name" e tutti i suoi dati verranno eliminati definitivamente.',
      AppLanguage.ru: 'Участок "$name" и все его данные будут удалены навсегда.',
    });
  }

  String get streets => _t({
    AppLanguage.pt: 'Ruas',
    AppLanguage.en: 'Streets',
    AppLanguage.es: 'Calles',
    AppLanguage.de: 'Straßen',
    AppLanguage.fr: 'Rues',
    AppLanguage.it: 'Vie',
    AppLanguage.ru: 'Улицы',
  });

  String get street => _t({
    AppLanguage.pt: 'Rua',
    AppLanguage.en: 'Street',
    AppLanguage.es: 'Calle',
    AppLanguage.de: 'Straße',
    AppLanguage.fr: 'Rue',
    AppLanguage.it: 'Via',
    AppLanguage.ru: 'Улица',
  });

  String get addStreet => _t({
    AppLanguage.pt: 'Adicionar Rua',
    AppLanguage.en: 'Add Street',
    AppLanguage.es: 'Agregar Calle',
    AppLanguage.de: 'Straße hinzufügen',
    AppLanguage.fr: 'Ajouter une Rue',
    AppLanguage.it: 'Aggiungi Via',
    AppLanguage.ru: 'Добавить улицу',
  });

  String get newStreet => _t({
    AppLanguage.pt: 'Nova Rua',
    AppLanguage.en: 'New Street',
    AppLanguage.es: 'Nueva Calle',
    AppLanguage.de: 'Neue Straße',
    AppLanguage.fr: 'Nouvelle Rue',
    AppLanguage.it: 'Nuova Via',
    AppLanguage.ru: 'Новая улица',
  });

  String get streetName => _t({
    AppLanguage.pt: 'Nome da rua',
    AppLanguage.en: 'Street name',
    AppLanguage.es: 'Nombre de la calle',
    AppLanguage.de: 'Straßenname',
    AppLanguage.fr: 'Nom de la rue',
    AppLanguage.it: 'Nome della via',
    AppLanguage.ru: 'Название улицы',
  });

  String get enterStreetName => _t({
    AppLanguage.pt: 'Digite um nome para a rua',
    AppLanguage.en: 'Enter a street name',
    AppLanguage.es: 'Ingrese un nombre para la calle',
    AppLanguage.de: 'Geben Sie einen Straßennamen ein',
    AppLanguage.fr: 'Entrez un nom de rue',
    AppLanguage.it: 'Inserisci un nome per la via',
    AppLanguage.ru: 'Введите название улицы',
  });

  String get streetAdded => _t({
    AppLanguage.pt: 'Rua adicionada!',
    AppLanguage.en: 'Street added!',
    AppLanguage.es: '¡Calle agregada!',
    AppLanguage.de: 'Straße hinzugefügt!',
    AppLanguage.fr: 'Rue ajoutée!',
    AppLanguage.it: 'Via aggiunta!',
    AppLanguage.ru: 'Улица добавлена!',
  });

  String get editStreet => _t({
    AppLanguage.pt: 'Editar Rua',
    AppLanguage.en: 'Edit Street',
    AppLanguage.es: 'Editar Calle',
    AppLanguage.de: 'Straße bearbeiten',
    AppLanguage.fr: 'Modifier la Rue',
    AppLanguage.it: 'Modifica Via',
    AppLanguage.ru: 'Редактировать улицу',
  });

  String get moveStreet => _t({
    AppLanguage.pt: 'Mover Rua',
    AppLanguage.en: 'Move Street',
    AppLanguage.es: 'Mover Calle',
    AppLanguage.de: 'Straße verschieben',
    AppLanguage.fr: 'Déplacer la Rue',
    AppLanguage.it: 'Sposta Via',
    AppLanguage.ru: 'Переместить улицу',
  });

  String get moveToAnotherTerritory => _t({
    AppLanguage.pt: 'Mover para outro território',
    AppLanguage.en: 'Move to another territory',
    AppLanguage.es: 'Mover a otro territorio',
    AppLanguage.de: 'In anderes Gebiet verschieben',
    AppLanguage.fr: 'Déplacer vers un autre territoire',
    AppLanguage.it: 'Sposta in un altro territorio',
    AppLanguage.ru: 'Переместить в другой участок',
  });

  String moveStreetTo(String name) {
    return _t({
      AppLanguage.pt: 'Mover "$name" para:',
      AppLanguage.en: 'Move "$name" to:',
      AppLanguage.es: 'Mover "$name" a:',
      AppLanguage.de: '"$name" verschieben nach:',
      AppLanguage.fr: 'Déplacer "$name" vers:',
      AppLanguage.it: 'Sposta "$name" in:',
      AppLanguage.ru: 'Переместить "$name" в:',
    });
  }

  String streetMovedTo(String name) {
    return _t({
      AppLanguage.pt: 'Rua movida para "$name"',
      AppLanguage.en: 'Street moved to "$name"',
      AppLanguage.es: 'Calle movida a "$name"',
      AppLanguage.de: 'Straße verschoben nach "$name"',
      AppLanguage.fr: 'Rue déplacée vers "$name"',
      AppLanguage.it: 'Via spostata in "$name"',
      AppLanguage.ru: 'Улица перемещена в "$name"',
    });
  }

  String get noOtherTerritories => _t({
    AppLanguage.pt: 'Não há outros territórios disponíveis',
    AppLanguage.en: 'No other territories available',
    AppLanguage.es: 'No hay otros territorios disponibles',
    AppLanguage.de: 'Keine anderen Gebiete verfügbar',
    AppLanguage.fr: 'Aucun autre territoire disponible',
    AppLanguage.it: 'Non ci sono altri territori disponibili',
    AppLanguage.ru: 'Нет других доступных участков',
  });

  String errorMoving(String error) {
    return _t({
      AppLanguage.pt: 'Erro ao mover: $error',
      AppLanguage.en: 'Error moving: $error',
      AppLanguage.es: 'Error al mover: $error',
      AppLanguage.de: 'Fehler beim Verschieben: $error',
      AppLanguage.fr: 'Erreur lors du déplacement: $error',
      AppLanguage.it: 'Errore durante lo spostamento: $error',
      AppLanguage.ru: 'Ошибка при перемещении: $error',
    });
  }

  String get deleteStreet => _t({
    AppLanguage.pt: 'Excluir Rua?',
    AppLanguage.en: 'Delete Street?',
    AppLanguage.es: '¿Eliminar Calle?',
    AppLanguage.de: 'Straße löschen?',
    AppLanguage.fr: 'Supprimer la Rue?',
    AppLanguage.it: 'Eliminare Via?',
    AppLanguage.ru: 'Удалить улицу?',
  });

  String moveToDestination(String name) {
    return _t({
      AppLanguage.pt: 'Mover "$name" para:',
      AppLanguage.en: 'Move "$name" to:',
      AppLanguage.es: 'Mover "$name" a:',
      AppLanguage.de: '"$name" verschieben nach:',
      AppLanguage.fr: 'Déplacer "$name" vers:',
      AppLanguage.it: 'Sposta "$name" in:',
      AppLanguage.ru: 'Переместить "$name" в:',
    });
  }

  String streetAndAddressesWillBeDeleted(String name) {
    return _t({
      AppLanguage.pt: 'A rua "$name" e todos os seus endereços serão excluídos.',
      AppLanguage.en: 'The street "$name" and all its addresses will be deleted.',
      AppLanguage.es: 'La calle "$name" y todas sus direcciones serán eliminadas.',
      AppLanguage.de: 'Die Straße "$name" und alle ihre Adressen werden gelöscht.',
      AppLanguage.fr: 'La rue "$name" et toutes ses adresses seront supprimées.',
      AppLanguage.it: 'La via "$name" e tutti i suoi indirizzi saranno eliminati.',
      AppLanguage.ru: 'Улица "$name" и все её адреса будут удалены.',
    });
  }

  String get chooseFromGallery => _t({
    AppLanguage.pt: 'Escolher da galeria',
    AppLanguage.en: 'Choose from gallery',
    AppLanguage.es: 'Elegir de la galería',
    AppLanguage.de: 'Aus Galerie wählen',
    AppLanguage.fr: 'Choisir dans la galerie',
    AppLanguage.it: 'Scegli dalla galleria',
    AppLanguage.ru: 'Выбрать из галереи',
  });

  String get takePhoto => _t({
    AppLanguage.pt: 'Tirar foto',
    AppLanguage.en: 'Take photo',
    AppLanguage.es: 'Tomar foto',
    AppLanguage.de: 'Foto aufnehmen',
    AppLanguage.fr: 'Prendre une photo',
    AppLanguage.it: 'Scatta foto',
    AppLanguage.ru: 'Сделать фото',
  });

  String get removeMap => _t({
    AppLanguage.pt: 'Remover mapa',
    AppLanguage.en: 'Remove map',
    AppLanguage.es: 'Eliminar mapa',
    AppLanguage.de: 'Karte entfernen',
    AppLanguage.fr: 'Supprimer la carte',
    AppLanguage.it: 'Rimuovi mappa',
    AppLanguage.ru: 'Удалить карту',
  });

  String get viewFullscreen => _t({
    AppLanguage.pt: 'Ver em tela cheia',
    AppLanguage.en: 'View fullscreen',
    AppLanguage.es: 'Ver pantalla completa',
    AppLanguage.de: 'Vollbild anzeigen',
    AppLanguage.fr: 'Voir en plein écran',
    AppLanguage.it: 'Visualizza a schermo intero',
    AppLanguage.ru: 'Смотреть на весь экран',
  });

  String get tapToAddMap => _t({
    AppLanguage.pt: 'Toque para adicionar mapa',
    AppLanguage.en: 'Tap to add map',
    AppLanguage.es: 'Toque para agregar mapa',
    AppLanguage.de: 'Tippen Sie, um eine Karte hinzuzufügen',
    AppLanguage.fr: 'Appuyez pour ajouter une carte',
    AppLanguage.it: 'Tocca per aggiungere mappa',
    AppLanguage.ru: 'Нажмите, чтобы добавить карту',
  });

  String get notes => _t({
    AppLanguage.pt: 'Anotações',
    AppLanguage.en: 'Notes',
    AppLanguage.es: 'Notas',
    AppLanguage.de: 'Notizen',
    AppLanguage.fr: 'Notes',
    AppLanguage.it: 'Note',
    AppLanguage.ru: 'Заметки',
  });

  String get noStreets => _t({
    AppLanguage.pt: 'Nenhuma rua',
    AppLanguage.en: 'No streets',
    AppLanguage.es: 'Sin calles',
    AppLanguage.de: 'Keine Straßen',
    AppLanguage.fr: 'Aucune rue',
    AppLanguage.it: 'Nessuna via',
    AppLanguage.ru: 'Нет улиц',
  });

  String get addStreetsToTerritory => _t({
    AppLanguage.pt: 'Adicione ruas a este território',
    AppLanguage.en: 'Add streets to this territory',
    AppLanguage.es: 'Agregue calles a este territorio',
    AppLanguage.de: 'Fügen Sie diesem Gebiet Straßen hinzu',
    AppLanguage.fr: 'Ajoutez des rues à ce territoire',
    AppLanguage.it: 'Aggiungi vie a questo territorio',
    AppLanguage.ru: 'Добавьте улицы к этому участку',
  });

  String get createTerritory => _t({
    AppLanguage.pt: 'Criar Território',
    AppLanguage.en: 'Create Territory',
    AppLanguage.es: 'Crear Territorio',
    AppLanguage.de: 'Gebiet erstellen',
    AppLanguage.fr: 'Créer un Territoire',
    AppLanguage.it: 'Crea Territorio',
    AppLanguage.ru: 'Создать участок',
  });

  String get noTerritory => _t({
    AppLanguage.pt: 'Nenhum território',
    AppLanguage.en: 'No territory',
    AppLanguage.es: 'Ningún territorio',
    AppLanguage.de: 'Kein Gebiet',
    AppLanguage.fr: 'Aucun territoire',
    AppLanguage.it: 'Nessun territorio',
    AppLanguage.ru: 'Нет участка',
  });

  String get tapToCreateTerritory => _t({
    AppLanguage.pt: 'Toque no botão abaixo para criar seu primeiro território',
    AppLanguage.en: 'Tap the button below to create your first territory',
    AppLanguage.es: 'Toque el botón de abajo para crear su primer territorio',
    AppLanguage.de: 'Tippen Sie auf die Schaltfläche unten, um Ihr erstes Gebiet zu erstellen',
    AppLanguage.fr: 'Appuyez sur le bouton ci-dessous pour créer votre premier territoire',
    AppLanguage.it: 'Tocca il pulsante qui sotto per creare il tuo primo territorio',
    AppLanguage.ru: 'Нажмите кнопку ниже, чтобы создать первый участок',
  });

  String get addresses => _t({
    AppLanguage.pt: 'Endereços',
    AppLanguage.en: 'Addresses',
    AppLanguage.es: 'Direcciones',
    AppLanguage.de: 'Adressen',
    AppLanguage.fr: 'Adresses',
    AppLanguage.it: 'Indirizzi',
    AppLanguage.ru: 'Адреса',
  });

  String get noTerritories => _t({
    AppLanguage.pt: 'Nenhum território ainda',
    AppLanguage.en: 'No territories yet',
    AppLanguage.es: 'Sin territorios aún',
    AppLanguage.de: 'Noch keine Gebiete',
    AppLanguage.fr: 'Aucun territoire encore',
    AppLanguage.it: 'Nessun territorio ancora',
    AppLanguage.ru: 'Пока нет участков',
  });

  String get archiveTerritories => _t({
    AppLanguage.pt: 'Arquivar Territórios',
    AppLanguage.en: 'Archive Territories',
    AppLanguage.es: 'Archivar Territorios',
    AppLanguage.de: 'Gebiete archivieren',
    AppLanguage.fr: 'Archiver les Territoires',
    AppLanguage.it: 'Archivia Territori',
    AppLanguage.ru: 'Архивировать участки',
  });

  String get archived => _t({
    AppLanguage.pt: 'Arquivados',
    AppLanguage.en: 'Archived',
    AppLanguage.es: 'Archivados',
    AppLanguage.de: 'Archiviert',
    AppLanguage.fr: 'Archivés',
    AppLanguage.it: 'Archiviati',
    AppLanguage.ru: 'Архив',
  });

  String get archive => _t({
    AppLanguage.pt: 'Arquivar',
    AppLanguage.en: 'Archive',
    AppLanguage.es: 'Archivar',
    AppLanguage.de: 'Archivieren',
    AppLanguage.fr: 'Archiver',
    AppLanguage.it: 'Archivia',
    AppLanguage.ru: 'Архивировать',
  });

  String get unarchive => _t({
    AppLanguage.pt: 'Desarquivar',
    AppLanguage.en: 'Unarchive',
    AppLanguage.es: 'Desarchivar',
    AppLanguage.de: 'Aus Archiv holen',
    AppLanguage.fr: 'Désarchiver',
    AppLanguage.it: 'Estrai dall\'archivio',
    AppLanguage.ru: 'Разархивировать',
  });

  String get archivedTerritories => _t({
    AppLanguage.pt: 'Territórios Arquivados',
    AppLanguage.en: 'Archived Territories',
    AppLanguage.es: 'Territorios Archivados',
    AppLanguage.de: 'Archivierte Gebiete',
    AppLanguage.fr: 'Territoires Archivés',
    AppLanguage.it: 'Territori Archiviati',
    AppLanguage.ru: 'Архивированные участки',
  });

  String get tryAgain => _t({
    AppLanguage.pt: 'Tentar novamente',
    AppLanguage.en: 'Try again',
    AppLanguage.es: 'Intentar de nuevo',
    AppLanguage.de: 'Erneut versuchen',
    AppLanguage.fr: 'Réessayer',
    AppLanguage.it: 'Riprova',
    AppLanguage.ru: 'Попробуйте снова',
  });

  String get create => _t({
    AppLanguage.pt: 'Criar',
    AppLanguage.en: 'Create',
    AppLanguage.es: 'Crear',
    AppLanguage.de: 'Erstellen',
    AppLanguage.fr: 'Créer',
    AppLanguage.it: 'Crea',
    AppLanguage.ru: 'Создать',
  });

  String get deleteTerritory => _t({
    AppLanguage.pt: 'Excluir Território?',
    AppLanguage.en: 'Delete Territory?',
    AppLanguage.es: '¿Eliminar Territorio?',
    AppLanguage.de: 'Gebiet löschen?',
    AppLanguage.fr: 'Supprimer le Territoire?',
    AppLanguage.it: 'Eliminare Territorio?',
    AppLanguage.ru: 'Удалить участок?',
  });

  String get editTerritory => _t({
    AppLanguage.pt: 'Editar Território',
    AppLanguage.en: 'Edit Territory',
    AppLanguage.es: 'Editar Territorio',
    AppLanguage.de: 'Gebiet bearbeiten',
    AppLanguage.fr: 'Modifier le Territoire',
    AppLanguage.it: 'Modifica Territorio',
    AppLanguage.ru: 'Редактировать участок',
  });

  String get noArchivedTerritories => _t({
    AppLanguage.pt: 'Nenhum território arquivado',
    AppLanguage.en: 'No archived territories',
    AppLanguage.es: 'Ningún territorio archivado',
    AppLanguage.de: 'Keine archivierten Gebiete',
    AppLanguage.fr: 'Aucun territoire archivé',
    AppLanguage.it: 'Nessun territorio archiviato',
    AppLanguage.ru: 'Нет архивированных участков',
  });

  String get enterTerritoryName => _t({
    AppLanguage.pt: 'Digite um nome para o território',
    AppLanguage.en: 'Enter a name for the territory',
    AppLanguage.es: 'Ingrese un nombre para el territorio',
    AppLanguage.de: 'Geben Sie einen Namen für das Gebiet ein',
    AppLanguage.fr: 'Entrez un nom pour le territoire',
    AppLanguage.it: 'Inserisci un nome per il territorio',
    AppLanguage.ru: 'Введите название участка',
  });

  String get territoryCreated => _t({
    AppLanguage.pt: 'Território criado!',
    AppLanguage.en: 'Territory created!',
    AppLanguage.es: '¡Territorio creado!',
    AppLanguage.de: 'Gebiet erstellt!',
    AppLanguage.fr: 'Territoire créé!',
    AppLanguage.it: 'Territorio creato!',
    AppLanguage.ru: 'Участок создан!',
  });

  String get territoryNotFound => _t({
    AppLanguage.pt: 'Território não encontrado',
    AppLanguage.en: 'Territory not found',
    AppLanguage.es: 'Territorio no encontrado',
    AppLanguage.de: 'Gebiet nicht gefunden',
    AppLanguage.fr: 'Territoire non trouvé',
    AppLanguage.it: 'Territorio non trovato',
    AppLanguage.ru: 'Участок не найден',
  });

  String errorLoading(String error) {
    return _t({
      AppLanguage.pt: 'Erro ao carregar: $error',
      AppLanguage.en: 'Error loading: $error',
      AppLanguage.es: 'Error al cargar: $error',
      AppLanguage.de: 'Fehler beim Laden: $error',
      AppLanguage.fr: 'Erreur de chargement: $error',
      AppLanguage.it: 'Errore di caricamento: $error',
      AppLanguage.ru: 'Ошибка загрузки: $error',
    });
  }

  // ==================== INTERESSADOS ====================
  String get interested => _t({
    AppLanguage.pt: 'Interessado',
    AppLanguage.en: 'Interested',
    AppLanguage.es: 'Interesado',
    AppLanguage.de: 'Interessiert',
    AppLanguage.fr: 'Intéressé',
    AppLanguage.it: 'Interessato',
    AppLanguage.ru: 'Интересуется',
  });

  String get noInterested => _t({
    AppLanguage.pt: 'Nenhum interessado ainda',
    AppLanguage.en: 'No interested yet',
    AppLanguage.es: 'Sin interesados aún',
    AppLanguage.de: 'Noch keine Interessierten',
    AppLanguage.fr: 'Aucun intéressé encore',
    AppLanguage.it: 'Nessun interessato ancora',
    AppLanguage.ru: 'Пока нет интересующихся',
  });

  String get addVisitTooltip => _t({
    AppLanguage.pt: 'Adicionar visita',
    AppLanguage.en: 'Add visit',
    AppLanguage.es: 'Agregar visita',
    AppLanguage.de: 'Besuch hinzufügen',
    AppLanguage.fr: 'Ajouter une visite',
    AppLanguage.it: 'Aggiungi visita',
    AppLanguage.ru: 'Добавить посещение',
  });

  String get newVisit => _t({
    AppLanguage.pt: 'Nova visita',
    AppLanguage.en: 'New visit',
    AppLanguage.es: 'Nueva visita',
    AppLanguage.de: 'Neuer Besuch',
    AppLanguage.fr: 'Nouvelle visite',
    AppLanguage.it: 'Nuova visita',
    AppLanguage.ru: 'Новое посещение',
  });

  String get deleteNumberLabel => _t({
    AppLanguage.pt: 'Excluir número',
    AppLanguage.en: 'Delete number',
    AppLanguage.es: 'Eliminar número',
    AppLanguage.de: 'Nummer löschen',
    AppLanguage.fr: 'Supprimer le numéro',
    AppLanguage.it: 'Elimina numero',
    AppLanguage.ru: 'Удалить номер',
  });

  String get noVisitsYet => _t({
    AppLanguage.pt: 'Nenhuma visita registrada ainda',
    AppLanguage.en: 'No visits registered yet',
    AppLanguage.es: 'Sin visitas registradas aún',
    AppLanguage.de: 'Noch keine Besuche registriert',
    AppLanguage.fr: 'Aucune visite enregistrée encore',
    AppLanguage.it: 'Nessuna visita registrata ancora',
    AppLanguage.ru: 'Посещений пока нет',
  });

  String lastVisitOn(String date, String? name) {
    if (name != null) {
      return _t({
        AppLanguage.pt: 'Última: $date - $name',
        AppLanguage.en: 'Last: $date - $name',
        AppLanguage.es: 'Última: $date - $name',
        AppLanguage.de: 'Letzte: $date - $name',
        AppLanguage.fr: 'Dernière: $date - $name',
        AppLanguage.it: 'Ultima: $date - $name',
        AppLanguage.ru: 'Последнее: $date - $name',
      });
    }
    return _t({
      AppLanguage.pt: 'Última: $date',
      AppLanguage.en: 'Last: $date',
      AppLanguage.es: 'Última: $date',
      AppLanguage.de: 'Letzte: $date',
      AppLanguage.fr: 'Dernière: $date',
      AppLanguage.it: 'Ultima: $date',
      AppLanguage.ru: 'Последнее: $date',
    });
  }

  String get returnVisit => _t({
    AppLanguage.pt: 'Revisita',
    AppLanguage.en: 'Return Visit',
    AppLanguage.es: 'Revisita',
    AppLanguage.de: 'Rückbesuch',
    AppLanguage.fr: 'Nouvelle Visite',
    AppLanguage.it: 'Ulteriore Visita',
    AppLanguage.ru: 'Повторное посещение',
  });

  String get daysAgo => _t({
    AppLanguage.pt: 'dias atrás',
    AppLanguage.en: 'days ago',
    AppLanguage.es: 'días atrás',
    AppLanguage.de: 'Tagen',
    AppLanguage.fr: 'jours',
    AppLanguage.it: 'giorni fa',
    AppLanguage.ru: 'дней назад',
  });

  String get openMaps => _t({
    AppLanguage.pt: 'Abrir Mapa',
    AppLanguage.en: 'Open Maps',
    AppLanguage.es: 'Abrir Mapa',
    AppLanguage.de: 'Karte öffnen',
    AppLanguage.fr: 'Ouvrir la Carte',
    AppLanguage.it: 'Apri Mappa',
    AppLanguage.ru: 'Открыть карту',
  });

  // ==================== RELATÓRIOS ====================
  String get serviceTimer => _t({
    AppLanguage.pt: 'Cronômetro de Serviço',
    AppLanguage.en: 'Service Timer',
    AppLanguage.es: 'Cronómetro de Servicio',
    AppLanguage.de: 'Dienstzeituhr',
    AppLanguage.fr: 'Chronomètre de Service',
    AppLanguage.it: 'Timer di Servizio',
    AppLanguage.ru: 'Таймер служения',
  });

  String get sessionTime => _t({
    AppLanguage.pt: 'Tempo da Sessão',
    AppLanguage.en: 'Session Time',
    AppLanguage.es: 'Tiempo de Sesión',
    AppLanguage.de: 'Sitzungszeit',
    AppLanguage.fr: 'Temps de Session',
    AppLanguage.it: 'Tempo della Sessione',
    AppLanguage.ru: 'Время сессии',
  });

  String get start => _t({
    AppLanguage.pt: 'Início',
    AppLanguage.en: 'Start',
    AppLanguage.es: 'Inicio',
    AppLanguage.de: 'Start',
    AppLanguage.fr: 'Début',
    AppLanguage.it: 'Inizio',
    AppLanguage.ru: 'Старт',
  });

  String get end => _t({
    AppLanguage.pt: 'Término',
    AppLanguage.en: 'End',
    AppLanguage.es: 'Fin',
    AppLanguage.de: 'Ende',
    AppLanguage.fr: 'Fin',
    AppLanguage.it: 'Fine',
    AppLanguage.ru: 'Конец',
  });

  String get addToMonth => _t({
    AppLanguage.pt: 'Adicionar ao Mês',
    AppLanguage.en: 'Add to Month',
    AppLanguage.es: 'Agregar al Mes',
    AppLanguage.de: 'Zum Monat hinzufügen',
    AppLanguage.fr: 'Ajouter au Mois',
    AppLanguage.it: 'Aggiungi al Mese',
    AppLanguage.ru: 'Добавить к месяцу',
  });

  String get reset => _t({
    AppLanguage.pt: 'Zerar',
    AppLanguage.en: 'Reset',
    AppLanguage.es: 'Reiniciar',
    AppLanguage.de: 'Zurücksetzen',
    AppLanguage.fr: 'Réinitialiser',
    AppLanguage.it: 'Resetta',
    AppLanguage.ru: 'Сбросить',
  });

  String get timeAddedToMonth => _t({
    AppLanguage.pt: 'Tempo adicionado ao total do mês!',
    AppLanguage.en: 'Time added to monthly total!',
    AppLanguage.es: '¡Tiempo agregado al total del mes!',
    AppLanguage.de: 'Zeit zum Monatstotal hinzugefügt!',
    AppLanguage.fr: 'Temps ajouté au total mensuel!',
    AppLanguage.it: 'Tempo aggiunto al totale mensile!',
    AppLanguage.ru: 'Время добавлено к месячному итогу!',
  });

  String get generateReport => _t({
    AppLanguage.pt: 'Gerar Relatório',
    AppLanguage.en: 'Generate Report',
    AppLanguage.es: 'Generar Informe',
    AppLanguage.de: 'Bericht erstellen',
    AppLanguage.fr: 'Générer le Rapport',
    AppLanguage.it: 'Genera Rapporto',
    AppLanguage.ru: 'Создать отчёт',
  });

  String get report => _t({
    AppLanguage.pt: 'Relatório',
    AppLanguage.en: 'Report',
    AppLanguage.es: 'Informe',
    AppLanguage.de: 'Bericht',
    AppLanguage.fr: 'Rapport',
    AppLanguage.it: 'Rapporto',
    AppLanguage.ru: 'Отчёт',
  });

  String get clearSession => _t({
    AppLanguage.pt: 'Limpar sessão',
    AppLanguage.en: 'Clear session',
    AppLanguage.es: 'Limpiar sesión',
    AppLanguage.de: 'Sitzung löschen',
    AppLanguage.fr: 'Effacer session',
    AppLanguage.it: 'Cancella sessione',
    AppLanguage.ru: 'Очистить сессию',
  });

  String get serviceReport => _t({
    AppLanguage.pt: 'Relatório de Serviço',
    AppLanguage.en: 'Service Report',
    AppLanguage.es: 'Informe de Servicio',
    AppLanguage.de: 'Dienstbericht',
    AppLanguage.fr: 'Rapport de Service',
    AppLanguage.it: 'Rapporto di Servizio',
    AppLanguage.ru: 'Отчёт о служении',
  });

  String get share => _t({
    AppLanguage.pt: 'Compartilhar',
    AppLanguage.en: 'Share',
    AppLanguage.es: 'Compartir',
    AppLanguage.de: 'Teilen',
    AppLanguage.fr: 'Partager',
    AppLanguage.it: 'Condividi',
    AppLanguage.ru: 'Поделиться',
  });

  // ==================== CONFIGURAÇÕES ====================
  String get appearance => _t({
    AppLanguage.pt: 'Aparência',
    AppLanguage.en: 'Appearance',
    AppLanguage.es: 'Apariencia',
    AppLanguage.de: 'Aussehen',
    AppLanguage.fr: 'Apparence',
    AppLanguage.it: 'Aspetto',
    AppLanguage.ru: 'Оформление',
  });

  String get theme => _t({
    AppLanguage.pt: 'Tema',
    AppLanguage.en: 'Theme',
    AppLanguage.es: 'Tema',
    AppLanguage.de: 'Thema',
    AppLanguage.fr: 'Thème',
    AppLanguage.it: 'Tema',
    AppLanguage.ru: 'Тема',
  });

  String get systemDefault => _t({
    AppLanguage.pt: 'Padrão do Sistema',
    AppLanguage.en: 'System Default',
    AppLanguage.es: 'Predeterminado del Sistema',
    AppLanguage.de: 'Systemstandard',
    AppLanguage.fr: 'Par défaut du système',
    AppLanguage.it: 'Predefinito di Sistema',
    AppLanguage.ru: 'По умолчанию',
  });

  String get lightMode => _t({
    AppLanguage.pt: 'Modo Claro',
    AppLanguage.en: 'Light Mode',
    AppLanguage.es: 'Modo Claro',
    AppLanguage.de: 'Heller Modus',
    AppLanguage.fr: 'Mode Clair',
    AppLanguage.it: 'Modalità Chiara',
    AppLanguage.ru: 'Светлый режим',
  });

  String get darkMode => _t({
    AppLanguage.pt: 'Modo Escuro',
    AppLanguage.en: 'Dark Mode',
    AppLanguage.es: 'Modo Oscuro',
    AppLanguage.de: 'Dunkler Modus',
    AppLanguage.fr: 'Mode Sombre',
    AppLanguage.it: 'Modalità Scura',
    AppLanguage.ru: 'Тёмный режим',
  });

  String get primaryColor => _t({
    AppLanguage.pt: 'Cor Principal',
    AppLanguage.en: 'Primary Color',
    AppLanguage.es: 'Color Principal',
    AppLanguage.de: 'Primärfarbe',
    AppLanguage.fr: 'Couleur Principale',
    AppLanguage.it: 'Colore Principale',
    AppLanguage.ru: 'Основной цвет',
  });

  String get service => _t({
    AppLanguage.pt: 'Serviço',
    AppLanguage.en: 'Service',
    AppLanguage.es: 'Servicio',
    AppLanguage.de: 'Dienst',
    AppLanguage.fr: 'Service',
    AppLanguage.it: 'Servizio',
    AppLanguage.ru: 'Служение',
  });

  String get profile => _t({
    AppLanguage.pt: 'Perfil',
    AppLanguage.en: 'Profile',
    AppLanguage.es: 'Perfil',
    AppLanguage.de: 'Profil',
    AppLanguage.fr: 'Profil',
    AppLanguage.it: 'Profilo',
    AppLanguage.ru: 'Профиль',
  });

  String get data => _t({
    AppLanguage.pt: 'Dados',
    AppLanguage.en: 'Data',
    AppLanguage.es: 'Datos',
    AppLanguage.de: 'Daten',
    AppLanguage.fr: 'Données',
    AppLanguage.it: 'Dati',
    AppLanguage.ru: 'Данные',
  });

  String get backupProvider => _t({
    AppLanguage.pt: 'Provedor de Backup',
    AppLanguage.en: 'Backup Provider',
    AppLanguage.es: 'Proveedor de Respaldo',
    AppLanguage.de: 'Backup-Anbieter',
    AppLanguage.fr: 'Fournisseur de Sauvegarde',
    AppLanguage.it: 'Provider di Backup',
    AppLanguage.ru: 'Провайдер резервного копирования',
  });

  String get cloudBackupSubtitle => _t({
    AppLanguage.pt: 'Nuvem para salvar seus dados',
    AppLanguage.en: 'Cloud storage for your data',
    AppLanguage.es: 'Nube para guardar tus datos',
    AppLanguage.de: 'Cloud-Speicher für Ihre Daten',
    AppLanguage.fr: 'Cloud pour sauvegarder vos données',
    AppLanguage.it: 'Cloud per salvare i tuoi dati',
    AppLanguage.ru: 'Облако для хранения данных',
  });

  String get configureColumns => _t({
    AppLanguage.pt: 'Configurar colunas',
    AppLanguage.en: 'Configure columns',
    AppLanguage.es: 'Configurar columnas',
    AppLanguage.de: 'Spalten konfigurieren',
    AppLanguage.fr: 'Configurer les colonnes',
    AppLanguage.it: 'Configura colonne',
    AppLanguage.ru: 'Настроить столбцы',
  });

  String get addressNumber => _t({
    AppLanguage.pt: 'Número',
    AppLanguage.en: 'Number',
    AppLanguage.es: 'Número',
    AppLanguage.de: 'Nummer',
    AppLanguage.fr: 'Numéro',
    AppLanguage.it: 'Numero',
    AppLanguage.ru: 'Номер',
  });

  String get date => _t({
    AppLanguage.pt: 'Data',
    AppLanguage.en: 'Date',
    AppLanguage.es: 'Fecha',
    AppLanguage.de: 'Datum',
    AppLanguage.fr: 'Date',
    AppLanguage.it: 'Data',
    AppLanguage.ru: 'Дата',
  });

  String get backup => _t({
    AppLanguage.pt: 'Fazer Backup',
    AppLanguage.en: 'Backup',
    AppLanguage.es: 'Respaldar',
    AppLanguage.de: 'Sichern',
    AppLanguage.fr: 'Sauvegarder',
    AppLanguage.it: 'Backup',
    AppLanguage.ru: 'Резервное копирование',
  });

  String get restore => _t({
    AppLanguage.pt: 'Restaurar',
    AppLanguage.en: 'Restore',
    AppLanguage.es: 'Restaurar',
    AppLanguage.de: 'Wiederherstellen',
    AppLanguage.fr: 'Restaurer',
    AppLanguage.it: 'Ripristina',
    AppLanguage.ru: 'Восстановить',
  });

  String get notConnected => _t({
    AppLanguage.pt: 'Não conectado',
    AppLanguage.en: 'Not connected',
    AppLanguage.es: 'No conectado',
    AppLanguage.de: 'Nicht verbunden',
    AppLanguage.fr: 'Non connecté',
    AppLanguage.it: 'Non connesso',
    AppLanguage.ru: 'Не подключено',
  });

  String get loginToBackup => _t({
    AppLanguage.pt: 'Faça login para salvar seus dados',
    AppLanguage.en: 'Login to save your data',
    AppLanguage.es: 'Inicia sesión para guardar tus datos',
    AppLanguage.de: 'Anmelden um Daten zu speichern',
    AppLanguage.fr: 'Connectez-vous pour sauvegarder vos données',
    AppLanguage.it: 'Accedi per salvare i tuoi dati',
    AppLanguage.ru: 'Войдите для сохранения данных',
  });

  String get login => _t({
    AppLanguage.pt: 'Login',
    AppLanguage.en: 'Login',
    AppLanguage.es: 'Iniciar sesión',
    AppLanguage.de: 'Anmelden',
    AppLanguage.fr: 'Connexion',
    AppLanguage.it: 'Accedi',
    AppLanguage.ru: 'Войти',
  });

  String get logout => _t({
    AppLanguage.pt: 'Sair',
    AppLanguage.en: 'Logout',
    AppLanguage.es: 'Cerrar sesión',
    AppLanguage.de: 'Abmelden',
    AppLanguage.fr: 'Déconnexion',
    AppLanguage.it: 'Esci',
    AppLanguage.ru: 'Выйти',
  });

  String lastBackupAt(String dateTime) => _t({
    AppLanguage.pt: 'Último backup: $dateTime',
    AppLanguage.en: 'Last backup: $dateTime',
    AppLanguage.es: 'Última copia: $dateTime',
    AppLanguage.de: 'Letztes Backup: $dateTime',
    AppLanguage.fr: 'Dernière sauvegarde: $dateTime',
    AppLanguage.it: 'Ultimo backup: $dateTime',
    AppLanguage.ru: 'Последняя копия: $dateTime',
  });

  String get noBackupFound => _t({
    AppLanguage.pt: 'Nenhum backup encontrado',
    AppLanguage.en: 'No backup found',
    AppLanguage.es: 'No se encontró copia de seguridad',
    AppLanguage.de: 'Kein Backup gefunden',
    AppLanguage.fr: 'Aucune sauvegarde trouvée',
    AppLanguage.it: 'Nessun backup trovato',
    AppLanguage.ru: 'Резервная копия не найдена',
  });

  String get restoreBackupTitle => _t({
    AppLanguage.pt: 'Restaurar Backup?',
    AppLanguage.en: 'Restore Backup?',
    AppLanguage.es: '¿Restaurar Copia?',
    AppLanguage.de: 'Backup wiederherstellen?',
    AppLanguage.fr: 'Restaurer la sauvegarde?',
    AppLanguage.it: 'Ripristinare il backup?',
    AppLanguage.ru: 'Восстановить резервную копию?',
  });

  String get restoreWarning => _t({
    AppLanguage.pt: 'Atenção: Restaurar um backup substituirá TODOS os dados atuais do aplicativo. Certifique-se de que o backup na nuvem é mais recente que seus dados locais.',
    AppLanguage.en: 'Warning: Restoring a backup will replace ALL current app data. Make sure the cloud backup is more recent than your local data.',
    AppLanguage.es: 'Advertencia: Restaurar una copia de seguridad reemplazará TODOS los datos actuales de la aplicación. Asegúrese de que la copia en la nube sea más reciente que sus datos locales.',
    AppLanguage.de: 'Achtung: Das Wiederherstellen eines Backups ersetzt ALLE aktuellen App-Daten. Stellen Sie sicher, dass das Cloud-Backup aktueller ist als Ihre lokalen Daten.',
    AppLanguage.fr: 'Attention: La restauration d\'une sauvegarde remplacera TOUTES les données actuelles de l\'application. Assurez-vous que la sauvegarde cloud est plus récente que vos données locales.',
    AppLanguage.it: 'Attenzione: Il ripristino di un backup sostituirà TUTTI i dati attuali dell\'app. Assicurati che il backup cloud sia più recente dei tuoi dati locali.',
    AppLanguage.ru: 'Внимание: Восстановление резервной копии заменит ВСЕ текущие данные приложения. Убедитесь, что облачная копия новее ваших локальных данных.',
  });

  String get restoreNow => _t({
    AppLanguage.pt: 'Restaurar Agora',
    AppLanguage.en: 'Restore Now',
    AppLanguage.es: 'Restaurar Ahora',
    AppLanguage.de: 'Jetzt wiederherstellen',
    AppLanguage.fr: 'Restaurer maintenant',
    AppLanguage.it: 'Ripristina ora',
    AppLanguage.ru: 'Восстановить сейчас',
  });

  // ==================== PERFIL DO PUBLICADOR ====================
  String get publisherType => _t({
    AppLanguage.pt: 'Tipo de Publicador',
    AppLanguage.en: 'Publisher Type',
    AppLanguage.es: 'Tipo de Publicador',
    AppLanguage.de: 'Verkündigertyp',
    AppLanguage.fr: 'Type de Proclamateur',
    AppLanguage.it: 'Tipo di Proclamatore',
    AppLanguage.ru: 'Тип возвещателя',
  });

  String get publisher => _t({
    AppLanguage.pt: 'Publicador',
    AppLanguage.en: 'Publisher',
    AppLanguage.es: 'Publicador',
    AppLanguage.de: 'Verkündiger',
    AppLanguage.fr: 'Proclamateur',
    AppLanguage.it: 'Proclamatore',
    AppLanguage.ru: 'Возвещатель',
  });

  String get auxiliaryPioneer => _t({
    AppLanguage.pt: 'Pioneiro Auxiliar',
    AppLanguage.en: 'Auxiliary Pioneer',
    AppLanguage.es: 'Precursor Auxiliar',
    AppLanguage.de: 'Hilfspionier',
    AppLanguage.fr: 'Pionnier Auxiliaire',
    AppLanguage.it: 'Pioniere Ausiliario',
    AppLanguage.ru: 'Подсобный пионер',
  });

  String get regularPioneer => _t({
    AppLanguage.pt: 'Pioneiro Regular',
    AppLanguage.en: 'Regular Pioneer',
    AppLanguage.es: 'Precursor Regular',
    AppLanguage.de: 'Allgemeiner Pionier',
    AppLanguage.fr: 'Pionnier Permanent',
    AppLanguage.it: 'Pioniere Regolare',
    AppLanguage.ru: 'Общий пионер',
  });

  String get hourGoal => _t({
    AppLanguage.pt: 'Meta de Horas',
    AppLanguage.en: 'Hour Goal',
    AppLanguage.es: 'Meta de Horas',
    AppLanguage.de: 'Stundenziel',
    AppLanguage.fr: "Objectif d'Heures",
    AppLanguage.it: 'Obiettivo Ore',
    AppLanguage.ru: 'Цель по часам',
  });

  String get hoursPerMonth => _t({
    AppLanguage.pt: 'horas/mês',
    AppLanguage.en: 'hours/month',
    AppLanguage.es: 'horas/mes',
    AppLanguage.de: 'Stunden/Monat',
    AppLanguage.fr: 'heures/mois',
    AppLanguage.it: 'ore/mese',
    AppLanguage.ru: 'часов/месяц',
  });

  String get creditHours => _t({
    AppLanguage.pt: 'Crédito de Horas',
    AppLanguage.en: 'Credit Hours',
    AppLanguage.es: 'Crédito de Horas',
    AppLanguage.de: 'Stundenguthaben',
    AppLanguage.fr: "Heures de Crédit",
    AppLanguage.it: 'Ore di Credito',
    AppLanguage.ru: 'Зачётные часы',
  });

  String get volunteerWorkHours => _t({
    AppLanguage.pt: 'horas de trabalho voluntário',
    AppLanguage.en: 'volunteer work hours',
    AppLanguage.es: 'horas de trabajo voluntario',
    AppLanguage.de: 'Stunden freiwilliger Arbeit',
    AppLanguage.fr: 'heures de travail bénévole',
    AppLanguage.it: 'ore di lavoro volontario',
    AppLanguage.ru: 'часов добровольной работы',
  });

  String get volunteerWorkHoursDescription => _t({
    AppLanguage.pt: 'Horas de outros trabalhos voluntários que contam para sua meta:',
    AppLanguage.en: 'Hours from other volunteer work that count toward your goal:',
    AppLanguage.es: 'Horas de otros trabajos voluntarios que cuentan para tu meta:',
    AppLanguage.de: 'Stunden aus anderen freiwilligen Arbeiten, die für Ihr Ziel zählen:',
    AppLanguage.fr: "Heures d'autres travaux bénévoles qui comptent pour votre objectif:",
    AppLanguage.it: 'Ore di altri lavori volontari che contano per il tuo obiettivo:',
    AppLanguage.ru: 'Часы другой добровольной работы, которые засчитываются в вашу цель:',
  });

  String get creditHoursLabel => _t({
    AppLanguage.pt: 'Horas de crédito',
    AppLanguage.en: 'Credit hours',
    AppLanguage.es: 'Horas de crédito',
    AppLanguage.de: 'Guthabenstunden',
    AppLanguage.fr: 'Heures de crédit',
    AppLanguage.it: 'Ore di credito',
    AppLanguage.ru: 'Зачётные часы',
  });

  String get addCreditHours => _t({
    AppLanguage.pt: 'Adicionar Crédito',
    AppLanguage.en: 'Add Credit',
    AppLanguage.es: 'Agregar Crédito',
    AppLanguage.de: 'Guthaben hinzufügen',
    AppLanguage.fr: 'Ajouter Crédit',
    AppLanguage.it: 'Aggiungi Credito',
    AppLanguage.ru: 'Добавить кредит',
  });

  String get addCreditHoursDescription => _t({
    AppLanguage.pt: 'Adicionar horas de trabalho voluntário ao tempo do mês:',
    AppLanguage.en: 'Add volunteer work hours to monthly time:',
    AppLanguage.es: 'Agregar horas de trabajo voluntario al tiempo mensual:',
    AppLanguage.de: 'Freiwilligenstunden zur Monatszeit hinzufügen:',
    AppLanguage.fr: 'Ajouter des heures de bénévolat au temps mensuel:',
    AppLanguage.it: 'Aggiungi ore di volontariato al tempo mensile:',
    AppLanguage.ru: 'Добавить часы волонтёрства к ежемесячному времени:',
  });

  String get hoursToAdd => _t({
    AppLanguage.pt: 'Horas a adicionar',
    AppLanguage.en: 'Hours to add',
    AppLanguage.es: 'Horas a agregar',
    AppLanguage.de: 'Stunden hinzuzufügen',
    AppLanguage.fr: 'Heures à ajouter',
    AppLanguage.it: 'Ore da aggiungere',
    AppLanguage.ru: 'Часов для добавления',
  });

  String creditHoursAdded(int hours) => _t({
    AppLanguage.pt: '$hours horas de crédito adicionadas',
    AppLanguage.en: '$hours credit hours added',
    AppLanguage.es: '$hours horas de crédito agregadas',
    AppLanguage.de: '$hours Guthabenstunden hinzugefügt',
    AppLanguage.fr: '$hours heures de crédit ajoutées',
    AppLanguage.it: '$hours ore di credito aggiunte',
    AppLanguage.ru: 'Добавлено $hours зачётных часов',
  });

  // ==================== CALENDÁRIO ====================
  String get planned => _t({
    AppLanguage.pt: 'Planejado',
    AppLanguage.en: 'Planned',
    AppLanguage.es: 'Planificado',
    AppLanguage.de: 'Geplant',
    AppLanguage.fr: 'Planifié',
    AppLanguage.it: 'Pianificato',
    AppLanguage.ru: 'Запланировано',
  });

  String get plannedHours => _t({
    AppLanguage.pt: 'Horas planejadas',
    AppLanguage.en: 'Planned hours',
    AppLanguage.es: 'Horas planificadas',
    AppLanguage.de: 'Geplante Stunden',
    AppLanguage.fr: 'Heures planifiées',
    AppLanguage.it: 'Ore pianificate',
    AppLanguage.ru: 'Запланированные часы',
  });

  String get planning => _t({
    AppLanguage.pt: 'Planejamento',
    AppLanguage.en: 'Planning',
    AppLanguage.es: 'Planificación',
    AppLanguage.de: 'Planung',
    AppLanguage.fr: 'Planification',
    AppLanguage.it: 'Pianificazione',
    AppLanguage.ru: 'Планирование',
  });

  String planningDay(int day) {
    return _t({
      AppLanguage.pt: 'Planejamento - Dia $day',
      AppLanguage.en: 'Planning - Day $day',
      AppLanguage.es: 'Planificación - Día $day',
      AppLanguage.de: 'Planung - Tag $day',
      AppLanguage.fr: 'Planification - Jour $day',
      AppLanguage.it: 'Pianificazione - Giorno $day',
      AppLanguage.ru: 'Планирование - День $day',
    });
  }

  String get day => _t({
    AppLanguage.pt: 'Dia',
    AppLanguage.en: 'Day',
    AppLanguage.es: 'Día',
    AppLanguage.de: 'Tag',
    AppLanguage.fr: 'Jour',
    AppLanguage.it: 'Giorno',
    AppLanguage.ru: 'День',
  });

  String get remove => _t({
    AppLanguage.pt: 'Remover',
    AppLanguage.en: 'Remove',
    AppLanguage.es: 'Eliminar',
    AppLanguage.de: 'Entfernen',
    AppLanguage.fr: 'Supprimer',
    AppLanguage.it: 'Rimuovi',
    AppLanguage.ru: 'Удалить',
  });

  // ==================== MESES ====================
  String getMonthName(int month) {
    const months = {
      AppLanguage.pt: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
                       'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
      AppLanguage.en: ['January', 'February', 'March', 'April', 'May', 'June',
                       'July', 'August', 'September', 'October', 'November', 'December'],
      AppLanguage.es: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
                       'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
      AppLanguage.de: ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni',
                       'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'],
      AppLanguage.fr: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin',
                       'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
      AppLanguage.it: ['Gennaio', 'Febbraio', 'Marzo', 'Aprile', 'Maggio', 'Giugno',
                       'Luglio', 'Agosto', 'Settembre', 'Ottobre', 'Novembre', 'Dicembre'],
      AppLanguage.ru: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь',
                       'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
    };
    return months[_lang]![month - 1];
  }

  // ==================== DIAS DA SEMANA ====================
  List<String> get weekdayAbbreviations {
    const weekdays = {
      AppLanguage.pt: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'],
      AppLanguage.en: ['S', 'M', 'T', 'W', 'T', 'F', 'S'],
      AppLanguage.es: ['D', 'L', 'M', 'M', 'J', 'V', 'S'],
      AppLanguage.de: ['S', 'M', 'D', 'M', 'D', 'F', 'S'],
      AppLanguage.fr: ['D', 'L', 'M', 'M', 'J', 'V', 'S'],
      AppLanguage.it: ['D', 'L', 'M', 'M', 'G', 'V', 'S'],
      AppLanguage.ru: ['В', 'П', 'В', 'С', 'Ч', 'П', 'С'],
    };
    return weekdays[_lang]!;
  }

  // ==================== STATUS DE VISITA ====================
  String get notVisited => _t({
    AppLanguage.pt: 'Não Visitado',
    AppLanguage.en: 'Not Visited',
    AppLanguage.es: 'No Visitado',
    AppLanguage.de: 'Nicht Besucht',
    AppLanguage.fr: 'Non Visité',
    AppLanguage.it: 'Non Visitato',
    AppLanguage.ru: 'Не посещено',
  });

  String get notHome => _t({
    AppLanguage.pt: 'Ninguém em casa',
    AppLanguage.en: 'Not Home',
    AppLanguage.es: 'Nadie en casa',
    AppLanguage.de: 'Nicht Zuhause',
    AppLanguage.fr: 'Absent',
    AppLanguage.it: 'Nessuno a casa',
    AppLanguage.ru: 'Нет дома',
  });

  String get busy => _t({
    AppLanguage.pt: 'Ocupado',
    AppLanguage.en: 'Busy',
    AppLanguage.es: 'Ocupado',
    AppLanguage.de: 'Beschäftigt',
    AppLanguage.fr: 'Occupé',
    AppLanguage.it: 'Occupato',
    AppLanguage.ru: 'Занят',
  });

  String get notInterested => _t({
    AppLanguage.pt: 'Não interessado',
    AppLanguage.en: 'Not Interested',
    AppLanguage.es: 'No Interesado',
    AppLanguage.de: 'Kein Interesse',
    AppLanguage.fr: 'Pas Intéressé',
    AppLanguage.it: 'Non Interessato',
    AppLanguage.ru: 'Не интересуется',
  });

  String get notAnswered => _t({
    AppLanguage.pt: 'Não atendeu',
    AppLanguage.en: 'Did not answer',
    AppLanguage.es: 'No contestó',
    AppLanguage.de: 'Nicht geantwortet',
    AppLanguage.fr: 'N\'a pas répondu',
    AppLanguage.it: 'Non ha risposto',
    AppLanguage.ru: 'Не ответил',
  });

  String get noTime => _t({
    AppLanguage.pt: 'Sem tempo',
    AppLanguage.en: 'No time',
    AppLanguage.es: 'Sin tiempo',
    AppLanguage.de: 'Keine Zeit',
    AppLanguage.fr: 'Pas de temps',
    AppLanguage.it: 'Nessun tempo',
    AppLanguage.ru: 'Нет времени',
  });

  String get doNotCall => _t({
    AppLanguage.pt: 'Não visitar',
    AppLanguage.en: 'Do not call',
    AppLanguage.es: 'No visitar',
    AppLanguage.de: 'Nicht besuchen',
    AppLanguage.fr: 'Ne pas visiter',
    AppLanguage.it: 'Non visitare',
    AppLanguage.ru: 'Не посещать',
  });

  String get emptyHouse => _t({
    AppLanguage.pt: 'Casa vazia',
    AppLanguage.en: 'Empty house',
    AppLanguage.es: 'Casa vacía',
    AppLanguage.de: 'Leeres Haus',
    AppLanguage.fr: 'Maison vide',
    AppLanguage.it: 'Casa vuota',
    AppLanguage.ru: 'Пустой дом',
  });

  String get answered => _t({
    AppLanguage.pt: 'Atendeu',
    AppLanguage.en: 'Answered',
    AppLanguage.es: 'Atendió',
    AppLanguage.de: 'Hat geantwortet',
    AppLanguage.fr: 'A répondu',
    AppLanguage.it: 'Ha risposto',
    AppLanguage.ru: 'Ответил',
  });

  String get letterLeft => _t({
    AppLanguage.pt: 'Deixou publicação',
    AppLanguage.en: 'Left publication',
    AppLanguage.es: 'Dejó publicación',
    AppLanguage.de: 'Publikation hinterlassen',
    AppLanguage.fr: 'Publication laissée',
    AppLanguage.it: 'Pubblicazione lasciata',
    AppLanguage.ru: 'Оставлена публикация',
  });

  String get otherLanguage => _t({
    AppLanguage.pt: 'Outro idioma',
    AppLanguage.en: 'Other language',
    AppLanguage.es: 'Otro idioma',
    AppLanguage.de: 'Andere Sprache',
    AppLanguage.fr: 'Autre langue',
    AppLanguage.it: 'Altra lingua',
    AppLanguage.ru: 'Другой язык',
  });

  // ==================== HORAS ====================
  String get hours => _t({
    AppLanguage.pt: 'Horas',
    AppLanguage.en: 'Hours',
    AppLanguage.es: 'Horas',
    AppLanguage.de: 'Stunden',
    AppLanguage.fr: 'Heures',
    AppLanguage.it: 'Ore',
    AppLanguage.ru: 'Часы',
  });

  String get minutes => _t({
    AppLanguage.pt: 'Minutos',
    AppLanguage.en: 'Minutes',
    AppLanguage.es: 'Minutos',
    AppLanguage.de: 'Minuten',
    AppLanguage.fr: 'Minutes',
    AppLanguage.it: 'Minuti',
    AppLanguage.ru: 'Минуты',
  });

  // ==================== STREET DETAIL SCREEN ====================
  String get allNumbers => _t({
    AppLanguage.pt: 'Todos',
    AppLanguage.en: 'All',
    AppLanguage.es: 'Todos',
    AppLanguage.de: 'Alle',
    AppLanguage.fr: 'Tous',
    AppLanguage.it: 'Tutti',
    AppLanguage.ru: 'Все',
  });

  String get oddNumbers => _t({
    AppLanguage.pt: 'Ímpares',
    AppLanguage.en: 'Odd',
    AppLanguage.es: 'Impares',
    AppLanguage.de: 'Ungerade',
    AppLanguage.fr: 'Impairs',
    AppLanguage.it: 'Dispari',
    AppLanguage.ru: 'Нечётные',
  });

  String get evenNumbers => _t({
    AppLanguage.pt: 'Pares',
    AppLanguage.en: 'Even',
    AppLanguage.es: 'Pares',
    AppLanguage.de: 'Gerade',
    AppLanguage.fr: 'Pairs',
    AppLanguage.it: 'Pari',
    AppLanguage.ru: 'Чётные',
  });

  String get filterAndSort => _t({
    AppLanguage.pt: 'Filtrar e Ordenar',
    AppLanguage.en: 'Filter and Sort',
    AppLanguage.es: 'Filtrar y Ordenar',
    AppLanguage.de: 'Filtern und Sortieren',
    AppLanguage.fr: 'Filtrer et Trier',
    AppLanguage.it: 'Filtra e Ordina',
    AppLanguage.ru: 'Фильтр и сортировка',
  });

  String get filterLabel => _t({
    AppLanguage.pt: 'Filtro',
    AppLanguage.en: 'Filter',
    AppLanguage.es: 'Filtro',
    AppLanguage.de: 'Filter',
    AppLanguage.fr: 'Filtre',
    AppLanguage.it: 'Filtro',
    AppLanguage.ru: 'Фильтр',
  });

  String get sortLabel => _t({
    AppLanguage.pt: 'Ordenação',
    AppLanguage.en: 'Sort',
    AppLanguage.es: 'Orden',
    AppLanguage.de: 'Sortierung',
    AppLanguage.fr: 'Tri',
    AppLanguage.it: 'Ordinamento',
    AppLanguage.ru: 'Сортировка',
  });

  String get ascending => _t({
    AppLanguage.pt: 'Crescente',
    AppLanguage.en: 'Ascending',
    AppLanguage.es: 'Ascendente',
    AppLanguage.de: 'Aufsteigend',
    AppLanguage.fr: 'Croissant',
    AppLanguage.it: 'Crescente',
    AppLanguage.ru: 'По возрастанию',
  });

  String get descending => _t({
    AppLanguage.pt: 'Decrescente',
    AppLanguage.en: 'Descending',
    AppLanguage.es: 'Descendente',
    AppLanguage.de: 'Absteigend',
    AppLanguage.fr: 'Décroissant',
    AppLanguage.it: 'Decrescente',
    AppLanguage.ru: 'По убыванию',
  });

  String get apply => _t({
    AppLanguage.pt: 'Aplicar',
    AppLanguage.en: 'Apply',
    AppLanguage.es: 'Aplicar',
    AppLanguage.de: 'Anwenden',
    AppLanguage.fr: 'Appliquer',
    AppLanguage.it: 'Applica',
    AppLanguage.ru: 'Применить',
  });

  String get generate => _t({
    AppLanguage.pt: 'Gerar',
    AppLanguage.en: 'Generate',
    AppLanguage.es: 'Generar',
    AppLanguage.de: 'Generieren',
    AppLanguage.fr: 'Générer',
    AppLanguage.it: 'Genera',
    AppLanguage.ru: 'Сгенерировать',
  });

  String get noNumbers => _t({
    AppLanguage.pt: 'Nenhum número',
    AppLanguage.en: 'No numbers',
    AppLanguage.es: 'Sin números',
    AppLanguage.de: 'Keine Nummern',
    AppLanguage.fr: 'Aucun numéro',
    AppLanguage.it: 'Nessun numero',
    AppLanguage.ru: 'Номеров нет',
  });

  String get addNumbersOrGenerate => _t({
    AppLanguage.pt: 'Adicione números de casas ou gere automaticamente',
    AppLanguage.en: 'Add house numbers or generate automatically',
    AppLanguage.es: 'Agregue números de casa o genere automáticamente',
    AppLanguage.de: 'Fügen Sie Hausnummern hinzu oder generieren Sie automatisch',
    AppLanguage.fr: 'Ajoutez des numéros de maison ou générez automatiquement',
    AppLanguage.it: 'Aggiungi numeri civici o genera automaticamente',
    AppLanguage.ru: 'Добавьте номера домов или сгенерируйте автоматически',
  });

  String get editStreetName => _t({
    AppLanguage.pt: 'Editar Nome da Rua',
    AppLanguage.en: 'Edit Street Name',
    AppLanguage.es: 'Editar Nombre de la Calle',
    AppLanguage.de: 'Straßenname bearbeiten',
    AppLanguage.fr: 'Modifier le Nom de la Rue',
    AppLanguage.it: 'Modifica Nome Via',
    AppLanguage.ru: 'Изменить название улицы',
  });

  String get newNumber => _t({
    AppLanguage.pt: 'Novo Número',
    AppLanguage.en: 'New Number',
    AppLanguage.es: 'Nuevo Número',
    AppLanguage.de: 'Neue Nummer',
    AppLanguage.fr: 'Nouveau Numéro',
    AppLanguage.it: 'Nuovo Numero',
    AppLanguage.ru: 'Новый номер',
  });

  String get enterNumber => _t({
    AppLanguage.pt: 'Digite um número',
    AppLanguage.en: 'Enter a number',
    AppLanguage.es: 'Ingrese un número',
    AppLanguage.de: 'Geben Sie eine Nummer ein',
    AppLanguage.fr: 'Entrez un numéro',
    AppLanguage.it: 'Inserisci un numero',
    AppLanguage.ru: 'Введите номер',
  });

  String get numberLabel => _t({
    AppLanguage.pt: 'Número',
    AppLanguage.en: 'Number',
    AppLanguage.es: 'Número',
    AppLanguage.de: 'Nummer',
    AppLanguage.fr: 'Numéro',
    AppLanguage.it: 'Numero',
    AppLanguage.ru: 'Номер',
  });

  String get numberHint => _t({
    AppLanguage.pt: 'Ex: 29, 29A, Apt 101',
    AppLanguage.en: 'E.g.: 29, 29A, Apt 101',
    AppLanguage.es: 'Ej: 29, 29A, Apt 101',
    AppLanguage.de: 'Z.B.: 29, 29A, Apt 101',
    AppLanguage.fr: 'Ex: 29, 29A, Apt 101',
    AppLanguage.it: 'Es: 29, 29A, Apt 101',
    AppLanguage.ru: 'Напр.: 29, 29А, Apt 101',
  });

  String get fromLabel => _t({
    AppLanguage.pt: 'De',
    AppLanguage.en: 'From',
    AppLanguage.es: 'De',
    AppLanguage.de: 'Von',
    AppLanguage.fr: 'De',
    AppLanguage.it: 'Da',
    AppLanguage.ru: 'От',
  });

  String get toLabel => _t({
    AppLanguage.pt: 'Até',
    AppLanguage.en: 'To',
    AppLanguage.es: 'Hasta',
    AppLanguage.de: 'Bis',
    AppLanguage.fr: 'À',
    AppLanguage.it: 'A',
    AppLanguage.ru: 'До',
  });

  String get generateNumbers => _t({
    AppLanguage.pt: 'Gerar Números',
    AppLanguage.en: 'Generate Numbers',
    AppLanguage.es: 'Generar Números',
    AppLanguage.de: 'Nummern generieren',
    AppLanguage.fr: 'Générer des Numéros',
    AppLanguage.it: 'Genera Numeri',
    AppLanguage.ru: 'Сгенерировать номера',
  });

  String get invalidValues => _t({
    AppLanguage.pt: 'Valores inválidos',
    AppLanguage.en: 'Invalid values',
    AppLanguage.es: 'Valores inválidos',
    AppLanguage.de: 'Ungültige Werte',
    AppLanguage.fr: 'Valeurs invalides',
    AppLanguage.it: 'Valori non validi',
    AppLanguage.ru: 'Неверные значения',
  });

  String get numbersGenerated => _t({
    AppLanguage.pt: 'Números gerados!',
    AppLanguage.en: 'Numbers generated!',
    AppLanguage.es: '¡Números generados!',
    AppLanguage.de: 'Nummern generiert!',
    AppLanguage.fr: 'Numéros générés!',
    AppLanguage.it: 'Numeri generati!',
    AppLanguage.ru: 'Номера сгенерированы!',
  });

  String get openInWhatsApp => _t({
    AppLanguage.pt: 'Abrir no WhatsApp',
    AppLanguage.en: 'Open in WhatsApp',
    AppLanguage.es: 'Abrir en WhatsApp',
    AppLanguage.de: 'In WhatsApp öffnen',
    AppLanguage.fr: 'Ouvrir dans WhatsApp',
    AppLanguage.it: 'Apri in WhatsApp',
    AppLanguage.ru: 'Открыть в WhatsApp',
  });

  String get visitRegistered => _t({
    AppLanguage.pt: 'Visita registrada!',
    AppLanguage.en: 'Visit registered!',
    AppLanguage.es: '¡Visita registrada!',
    AppLanguage.de: 'Besuch registriert!',
    AppLanguage.fr: 'Visite enregistrée!',
    AppLanguage.it: 'Visita registrata!',
    AppLanguage.ru: 'Посещение зарегистрировано!',
  });

  String get deleteVisit => _t({
    AppLanguage.pt: 'Excluir Visita?',
    AppLanguage.en: 'Delete Visit?',
    AppLanguage.es: '¿Eliminar Visita?',
    AppLanguage.de: 'Besuch löschen?',
    AppLanguage.fr: 'Supprimer la Visite?',
    AppLanguage.it: 'Eliminare Visita?',
    AppLanguage.ru: 'Удалить посещение?',
  });

  String get deleteNumber => _t({
    AppLanguage.pt: 'Excluir Número?',
    AppLanguage.en: 'Delete Number?',
    AppLanguage.es: '¿Eliminar Número?',
    AppLanguage.de: 'Nummer löschen?',
    AppLanguage.fr: 'Supprimer le Numéro?',
    AppLanguage.it: 'Eliminare Numero?',
    AppLanguage.ru: 'Удалить номер?',
  });

  String get nameAndPhoneRequired => _t({
    AppLanguage.pt: 'Nome e telefone são obrigatórios',
    AppLanguage.en: 'Name and phone are required',
    AppLanguage.es: 'Nombre y teléfono son obligatorios',
    AppLanguage.de: 'Name und Telefon sind erforderlich',
    AppLanguage.fr: 'Nom et téléphone sont requis',
    AppLanguage.it: 'Nome e telefono sono obbligatori',
    AppLanguage.ru: 'Имя и телефон обязательны',
  });

  String get streetNotFound => _t({
    AppLanguage.pt: 'Rua não encontrada',
    AppLanguage.en: 'Street not found',
    AppLanguage.es: 'Calle no encontrada',
    AppLanguage.de: 'Straße nicht gefunden',
    AppLanguage.fr: 'Rue non trouvée',
    AppLanguage.it: 'Via non trovata',
    AppLanguage.ru: 'Улица не найдена',
  });

  String get exportCsv => _t({
    AppLanguage.pt: 'Exportar CSV',
    AppLanguage.en: 'Export CSV',
    AppLanguage.es: 'Exportar CSV',
    AppLanguage.de: 'CSV exportieren',
    AppLanguage.fr: 'Exporter CSV',
    AppLanguage.it: 'Esporta CSV',
    AppLanguage.ru: 'Экспорт CSV',
  });

  String get csvNotHome => _t({
    AppLanguage.pt: 'CSV (Não em Casa)',
    AppLanguage.en: 'CSV (Not Home)',
    AppLanguage.es: 'CSV (No en Casa)',
    AppLanguage.de: 'CSV (Nicht zu Hause)',
    AppLanguage.fr: 'CSV (Pas à la Maison)',
    AppLanguage.it: 'CSV (Non a Casa)',
    AppLanguage.ru: 'CSV (Не дома)',
  });

  String get photoEditUnavailable => _t({
    AppLanguage.pt: 'Edição de foto indisponível na versão Web',
    AppLanguage.en: 'Photo editing unavailable in web version',
    AppLanguage.es: 'Edición de foto no disponible en la versión web',
    AppLanguage.de: 'Fotobearbeitung in der Webversion nicht verfügbar',
    AppLanguage.fr: 'Modification de photo indisponible dans la version web',
    AppLanguage.it: 'Modifica foto non disponibile nella versione web',
    AppLanguage.ru: 'Редактирование фото недоступно в веб-версии',
  });

  String errorMessage(String error) {
    return _t({
      AppLanguage.pt: 'Erro: $error',
      AppLanguage.en: 'Error: $error',
      AppLanguage.es: 'Error: $error',
      AppLanguage.de: 'Fehler: $error',
      AppLanguage.fr: 'Erreur: $error',
      AppLanguage.it: 'Errore: $error',
      AppLanguage.ru: 'Ошибка: $error',
    });
  }

  String get notesOptional => _t({
    AppLanguage.pt: 'Notas (opcional)',
    AppLanguage.en: 'Notes (optional)',
    AppLanguage.es: 'Notas (opcional)',
    AppLanguage.de: 'Notizen (optional)',
    AppLanguage.fr: 'Notes (optionnel)',
    AppLanguage.it: 'Note (opzionale)',
    AppLanguage.ru: 'Заметки (опционально)',
  });

  String get generateNumbersTooltip => _t({
    AppLanguage.pt: 'Gerar números',
    AppLanguage.en: 'Generate numbers',
    AppLanguage.es: 'Generar números',
    AppLanguage.de: 'Nummern generieren',
    AppLanguage.fr: 'Générer des numéros',
    AppLanguage.it: 'Genera numeri',
    AppLanguage.ru: 'Сгенерировать номера',
  });

  String get addNumberTooltip => _t({
    AppLanguage.pt: 'Adicionar número',
    AppLanguage.en: 'Add number',
    AppLanguage.es: 'Agregar número',
    AppLanguage.de: 'Nummer hinzufügen',
    AppLanguage.fr: 'Ajouter un numéro',
    AppLanguage.it: 'Aggiungi numero',
    AppLanguage.ru: 'Добавить номер',
  });

  String newVisitTitle(String number) {
    return _t({
      AppLanguage.pt: 'Nova visita - Nº $number',
      AppLanguage.en: 'New visit - No. $number',
      AppLanguage.es: 'Nueva visita - Nº $number',
      AppLanguage.de: 'Neuer Besuch - Nr. $number',
      AppLanguage.fr: 'Nouvelle visite - N° $number',
      AppLanguage.it: 'Nuova visita - N. $number',
      AppLanguage.ru: 'Новое посещение - № $number',
    });
  }

  String get visitStatus => _t({
    AppLanguage.pt: 'Status da visita',
    AppLanguage.en: 'Visit status',
    AppLanguage.es: 'Estado de la visita',
    AppLanguage.de: 'Besuchsstatus',
    AppLanguage.fr: 'Statut de la visite',
    AppLanguage.it: 'Stato della visita',
    AppLanguage.ru: 'Статус посещения',
  });

  String get visitDate => _t({
    AppLanguage.pt: 'Data da visita',
    AppLanguage.en: 'Visit date',
    AppLanguage.es: 'Fecha de visita',
    AppLanguage.de: 'Besuchsdatum',
    AppLanguage.fr: 'Date de visite',
    AppLanguage.it: 'Data della visita',
    AppLanguage.ru: 'Дата посещения',
  });

  String get visitTime => _t({
    AppLanguage.pt: 'Hora da visita',
    AppLanguage.en: 'Visit time',
    AppLanguage.es: 'Hora de visita',
    AppLanguage.de: 'Besuchszeit',
    AppLanguage.fr: 'Heure de visite',
    AppLanguage.it: 'Ora della visita',
    AppLanguage.ru: 'Время посещения',
  });

  String get editVisit => _t({
    AppLanguage.pt: 'Editar visita',
    AppLanguage.en: 'Edit visit',
    AppLanguage.es: 'Editar visita',
    AppLanguage.de: 'Besuch bearbeiten',
    AppLanguage.fr: 'Modifier la visite',
    AppLanguage.it: 'Modifica visita',
    AppLanguage.ru: 'Редактировать посещение',
  });

  String get personName => _t({
    AppLanguage.pt: 'Nome da pessoa',
    AppLanguage.en: 'Person name',
    AppLanguage.es: 'Nombre de la persona',
    AppLanguage.de: 'Name der Person',
    AppLanguage.fr: 'Nom de la personne',
    AppLanguage.it: 'Nome della persona',
    AppLanguage.ru: 'Имя человека',
  });

  String get phone => _t({
    AppLanguage.pt: 'Telefone',
    AppLanguage.en: 'Phone',
    AppLanguage.es: 'Teléfono',
    AppLanguage.de: 'Telefon',
    AppLanguage.fr: 'Téléphone',
    AppLanguage.it: 'Telefono',
    AppLanguage.ru: 'Телефон',
  });

  String get phoneOptional => _t({
    AppLanguage.pt: 'Telefone (opcional)',
    AppLanguage.en: 'Phone (optional)',
    AppLanguage.es: 'Teléfono (opcional)',
    AppLanguage.de: 'Telefon (optional)',
    AppLanguage.fr: 'Téléphone (optionnel)',
    AppLanguage.it: 'Telefono (opzionale)',
    AppLanguage.ru: 'Телефон (опционально)',
  });

  String get hour => _t({
    AppLanguage.pt: 'Hora',
    AppLanguage.en: 'Time',
    AppLanguage.es: 'Hora',
    AppLanguage.de: 'Uhrzeit',
    AppLanguage.fr: 'Heure',
    AppLanguage.it: 'Ora',
    AppLanguage.ru: 'Время',
  });

  String visitWillBeDeleted(String date) {
    return _t({
      AppLanguage.pt: 'A visita de $date será excluída.',
      AppLanguage.en: 'The visit from $date will be deleted.',
      AppLanguage.es: 'La visita de $date será eliminada.',
      AppLanguage.de: 'Der Besuch vom $date wird gelöscht.',
      AppLanguage.fr: 'La visite du $date sera supprimée.',
      AppLanguage.it: 'La visita del $date sarà eliminata.',
      AppLanguage.ru: 'Посещение $date будет удалено.',
    });
  }

  String numberAndVisitsWillBeDeleted(String number) {
    return _t({
      AppLanguage.pt: 'O número $number e todas as suas visitas serão excluídos.',
      AppLanguage.en: 'Number $number and all its visits will be deleted.',
      AppLanguage.es: 'El número $number y todas sus visitas serán eliminados.',
      AppLanguage.de: 'Die Nummer $number und alle ihre Besuche werden gelöscht.',
      AppLanguage.fr: 'Le numéro $number et toutes ses visites seront supprimés.',
      AppLanguage.it: 'Il numero $number e tutte le sue visite saranno eliminati.',
      AppLanguage.ru: 'Номер $number и все его посещения будут удалены.',
    });
  }

  String get saveToContacts => _t({
    AppLanguage.pt: 'Salvar na agenda',
    AppLanguage.en: 'Save to contacts',
    AppLanguage.es: 'Guardar en contactos',
    AppLanguage.de: 'In Kontakte speichern',
    AppLanguage.fr: 'Enregistrer dans les contacts',
    AppLanguage.it: 'Salva nei contatti',
    AppLanguage.ru: 'Сохранить в контакты',
  });

  String get contactSavedWithLabel => _t({
    AppLanguage.pt: 'Contato salvo com marcador "Pregação"!',
    AppLanguage.en: 'Contact saved with "Ministry" label!',
    AppLanguage.es: '¡Contacto guardado con etiqueta "Predicación"!',
    AppLanguage.de: 'Kontakt mit Markierung "Predigtdienst" gespeichert!',
    AppLanguage.fr: 'Contact enregistré avec étiquette "Ministère"!',
    AppLanguage.it: 'Contatto salvato con etichetta "Ministero"!',
    AppLanguage.ru: 'Контакт сохранён с меткой "Служение"!',
  });

  String errorSavingContact(String error) {
    return _t({
      AppLanguage.pt: 'Erro ao salvar contato: $error',
      AppLanguage.en: 'Error saving contact: $error',
      AppLanguage.es: 'Error al guardar contacto: $error',
      AppLanguage.de: 'Fehler beim Speichern des Kontakts: $error',
      AppLanguage.fr: 'Erreur lors de l\'enregistrement du contact: $error',
      AppLanguage.it: 'Errore durante il salvataggio del contatto: $error',
      AppLanguage.ru: 'Ошибка сохранения контакта: $error',
    });
  }

  // ==================== SETTINGS I18N ====================
  String get language => _t({
    AppLanguage.pt: 'Idioma',
    AppLanguage.en: 'Language',
    AppLanguage.es: 'Idioma',
    AppLanguage.de: 'Sprache',
    AppLanguage.fr: 'Langue',
    AppLanguage.it: 'Lingua',
    AppLanguage.ru: 'Язык',
  });

  String get selectLanguage => _t({
    AppLanguage.pt: 'Selecionar Idioma',
    AppLanguage.en: 'Select Language',
    AppLanguage.es: 'Seleccionar Idioma',
    AppLanguage.de: 'Sprache auswählen',
    AppLanguage.fr: 'Sélectionner la langue',
    AppLanguage.it: 'Seleziona Lingua',
    AppLanguage.ru: 'Выбрать язык',
  });

  String get system => _t({
    AppLanguage.pt: 'Sistema',
    AppLanguage.en: 'System',
    AppLanguage.es: 'Sistema',
    AppLanguage.de: 'System',
    AppLanguage.fr: 'Système',
    AppLanguage.it: 'Sistema',
    AppLanguage.ru: 'Система',
  });

  String get light => _t({
    AppLanguage.pt: 'Claro',
    AppLanguage.en: 'Light',
    AppLanguage.es: 'Claro',
    AppLanguage.de: 'Hell',
    AppLanguage.fr: 'Clair',
    AppLanguage.it: 'Chiaro',
    AppLanguage.ru: 'Светлый',
  });

  String get dark => _t({
    AppLanguage.pt: 'Escuro',
    AppLanguage.en: 'Dark',
    AppLanguage.es: 'Oscuro',
    AppLanguage.de: 'Dunkel',
    AppLanguage.fr: 'Sombre',
    AppLanguage.it: 'Scuro',
    AppLanguage.ru: 'Тёмный',
  });

  String get total => _t({
    AppLanguage.pt: 'Total',
    AppLanguage.en: 'Total',
    AppLanguage.es: 'Total',
    AppLanguage.de: 'Gesamt',
    AppLanguage.fr: 'Total',
    AppLanguage.it: 'Totale',
    AppLanguage.ru: 'Всего',
  });

  String get remaining => _t({
    AppLanguage.pt: 'Restante',
    AppLanguage.en: 'Remaining',
    AppLanguage.es: 'Restante',
    AppLanguage.de: 'Verbleibend',
    AppLanguage.fr: 'Restant',
    AppLanguage.it: 'Rimanente',
    AppLanguage.ru: 'Осталось',
  });

  String get progress => _t({
    AppLanguage.pt: 'Progresso',
    AppLanguage.en: 'Progress',
    AppLanguage.es: 'Progreso',
    AppLanguage.de: 'Fortschritt',
    AppLanguage.fr: 'Progrès',
    AppLanguage.it: 'Progresso',
    AppLanguage.ru: 'Прогресс',
  });

  String streetsCount(int count) {
    return _t({
      AppLanguage.pt: '$count ${count == 1 ? 'rua' : 'ruas'}',
      AppLanguage.en: '$count ${count == 1 ? 'street' : 'streets'}',
      AppLanguage.es: '$count ${count == 1 ? 'calle' : 'calles'}',
      AppLanguage.de: '$count ${count == 1 ? 'Straße' : 'Straßen'}',
      AppLanguage.fr: '$count ${count == 1 ? 'rue' : 'rues'}',
      AppLanguage.it: '$count ${count == 1 ? 'via' : 'vie'}',
      AppLanguage.ru: '$count ${count == 1 ? 'улица' : 'улиц'}',
    });
  }

  String daysCount(int count) {
    return _t({
      AppLanguage.pt: '$count ${count == 1 ? 'dia' : 'dias'}',
      AppLanguage.en: '$count ${count == 1 ? 'day' : 'days'}',
      AppLanguage.es: '$count ${count == 1 ? 'día' : 'días'}',
      AppLanguage.de: '$count ${count == 1 ? 'Tag' : 'Tage'}',
      AppLanguage.fr: '$count ${count == 1 ? 'jour' : 'jours'}',
      AppLanguage.it: '$count ${count == 1 ? 'giorno' : 'giorni'}',
      AppLanguage.ru: '$count ${count == 1 ? 'день' : 'дней'}',
    });
  }

  String get editMonthlyTime => _t({
    AppLanguage.pt: 'Editar Tempo do Mês',
    AppLanguage.en: 'Edit Monthly Time',
    AppLanguage.es: 'Editar Tiempo del Mes',
    AppLanguage.de: 'Monatszeit bearbeiten',
    AppLanguage.fr: 'Modifier le temps mensuel',
    AppLanguage.it: 'Modifica Tempo Mensile',
    AppLanguage.ru: 'Редактировать время',
  });

  String get monthlyTimeUpdated => _t({
    AppLanguage.pt: 'Tempo do mês atualizado!',
    AppLanguage.en: 'Monthly time updated!',
    AppLanguage.es: '¡Tiempo del mes actualizado!',
    AppLanguage.de: 'Monatszeit aktualisiert!',
    AppLanguage.fr: 'Temps mensuel mis à jour!',
    AppLanguage.it: 'Tempo mensile aggiornato!',
    AppLanguage.ru: 'Время за месяц обновлено!',
  });

  // ==================== RELATÓRIO DE SERVIÇO ====================
  String get fieldServiceReport => _t({
    AppLanguage.pt: 'Relatório de Serviço de Campo',
    AppLanguage.en: 'Field Service Report',
    AppLanguage.es: 'Informe de Servicio del Campo',
    AppLanguage.de: 'Felddienst-Bericht',
    AppLanguage.fr: 'Rapport de Service',
    AppLanguage.it: 'Rapporto di Servizio',
    AppLanguage.ru: 'Отчет о полевом служении',
  });

  String get timeWorked => _t({
    AppLanguage.pt: 'Tempo trabalhado',
    AppLanguage.en: 'Time worked',
    AppLanguage.es: 'Tiempo trabajado',
    AppLanguage.de: 'Gearbeitete Zeit',
    AppLanguage.fr: 'Temps travaillé',
    AppLanguage.it: 'Tempo lavorato',
    AppLanguage.ru: 'Отработанное время',
  });

  String get totalVisits => _t({
    AppLanguage.pt: 'Total de visitas',
    AppLanguage.en: 'Total visits',
    AppLanguage.es: 'Total de visitas',
    AppLanguage.de: 'Besuche insgesamt',
    AppLanguage.fr: 'Total des visites',
    AppLanguage.it: 'Visite totali',
    AppLanguage.ru: 'Всего посещений',
  });

  String get breakdown => _t({
    AppLanguage.pt: 'Detalhamento',
    AppLanguage.en: 'Breakdown',
    AppLanguage.es: 'Desglose',
    AppLanguage.de: 'Aufschlüsselung',
    AppLanguage.fr: 'Détail',
    AppLanguage.it: 'Dettaglio',
    AppLanguage.ru: 'Детализация',
  });

  String get others => _t({
    AppLanguage.pt: 'Outros',
    AppLanguage.en: 'Others',
    AppLanguage.es: 'Otros',
    AppLanguage.de: 'Sonstige',
    AppLanguage.fr: 'Autres',
    AppLanguage.it: 'Altri',
    AppLanguage.ru: 'Другие',
  });

  String generatedAt(String dateTime) {
    return _t({
      AppLanguage.pt: 'Gerado em $dateTime',
      AppLanguage.en: 'Generated at $dateTime',
      AppLanguage.es: 'Generado el $dateTime',
      AppLanguage.de: 'Erstellt am $dateTime',
      AppLanguage.fr: 'Généré le $dateTime',
      AppLanguage.it: 'Generato il $dateTime',
      AppLanguage.ru: 'Создано $dateTime',
    });
  }

  // ==================== PUBLISHER TYPE NAMES ====================
  String get publisherTypeName => _t({
    AppLanguage.pt: 'Publicador',
    AppLanguage.en: 'Publisher',
    AppLanguage.es: 'Publicador',
    AppLanguage.de: 'Verkündiger',
    AppLanguage.fr: 'Proclamateur',
    AppLanguage.it: 'Proclamatore',
    AppLanguage.ru: 'Возвещатель',
  });

  String get auxiliaryPioneerTypeName => _t({
    AppLanguage.pt: 'Pioneiro Auxiliar',
    AppLanguage.en: 'Auxiliary Pioneer',
    AppLanguage.es: 'Precursor Auxiliar',
    AppLanguage.de: 'Hilfspionier',
    AppLanguage.fr: 'Pionnier Auxiliaire',
    AppLanguage.it: 'Pioniere Ausiliario',
    AppLanguage.ru: 'Подсобный пионер',
  });

  String get regularPioneerTypeName => _t({
    AppLanguage.pt: 'Pioneiro Regular',
    AppLanguage.en: 'Regular Pioneer',
    AppLanguage.es: 'Precursor Regular',
    AppLanguage.de: 'Allgemeiner Pionier',
    AppLanguage.fr: 'Pionnier Permanent',
    AppLanguage.it: 'Pioniere Regolare',
    AppLanguage.ru: 'Общий пионер',
  });

  // ==================== GRÁFICO DE ESTATÍSTICAS ====================
  String get last3Months => _t({
    AppLanguage.pt: 'Últimos 3 Meses',
    AppLanguage.en: 'Last 3 Months',
    AppLanguage.es: 'Últimos 3 Meses',
    AppLanguage.de: 'Letzte 3 Monate',
    AppLanguage.fr: 'Les 3 derniers mois',
    AppLanguage.it: 'Ultimi 3 Mesi',
    AppLanguage.ru: 'Последние 3 месяца',
  });

  /// Helper para tradução baseada no idioma
  String _t(Map<AppLanguage, String> translations) {
    return translations[_lang] ?? translations[AppLanguage.en]!;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'pt', 'es', 'de', 'fr', 'it', 'ru'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
