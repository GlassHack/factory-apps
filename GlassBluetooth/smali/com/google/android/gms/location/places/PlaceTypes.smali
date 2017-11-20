.class public Lcom/google/android/gms/location/places/PlaceTypes;
.super Ljava/lang/Object;


# static fields
.field public static final ADDRESS_COMPONENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final COARSE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field private static final HA:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x15

    new-array v1, v1, [Lcom/google/android/gms/location/places/PlaceType;

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->ADMINISTRATIVE_AREA_LEVEL_1:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->ADMINISTRATIVE_AREA_LEVEL_2:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->ADMINISTRATIVE_AREA_LEVEL_3:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->COUNTRY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->FLOOR:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->LOCALITY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POST_BOX:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POSTAL_CODE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POSTAL_CODE_PREFIX:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POSTAL_TOWN:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PREMISE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ROOM:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ROUTE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->STREET_ADDRESS:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_1:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_2:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_3:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_4:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_5:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBPREMISE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/PlaceTypes;->ADDRESS_COMPONENTS:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/google/android/gms/location/places/PlaceType;

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->ADMINISTRATIVE_AREA_LEVEL_1:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->ADMINISTRATIVE_AREA_LEVEL_2:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->ADMINISTRATIVE_AREA_LEVEL_3:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->COUNTRY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->LOCALITY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POSTAL_CODE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POSTAL_CODE_PREFIX:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POSTAL_TOWN:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/PlaceTypes;->COARSE:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x7d

    new-array v1, v1, [Lcom/google/android/gms/location/places/PlaceType;

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->ACCOUNTING:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->AIRPORT:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->AMUSEMENT_PARK:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->AQUARIUM:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->ART_GALLERY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ATM:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->BAKERY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->BANK:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->BAR:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->BEAUTY_SALON:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->BICYCLE_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->BOOK_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->BOWLING_ALLEY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->BUS_STATION:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CAFE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CAMPGROUND:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CAR_DEALER:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CAR_RENTAL:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CAR_REPAIR:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CAR_WASH:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CASINO:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CEMETERY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CHURCH:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CITY_HALL:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CLOTHING_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->CONVENIENCE_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->COURTHOUSE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->DENTIST:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->DEPARTMENT_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->DOCTOR:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ELECTRICIAN:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ELECTRONICS_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->EMBASSY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ESTABLISHMENT:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->FINANCE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->FIRE_STATION:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->FLORIST:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->FOOD:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->FUNERAL_HOME:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->FURNITURE_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->GAS_STATION:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->GENERAL_CONTRACTOR:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->GROCERY_OR_SUPERMARKET:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->GYM:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->HAIR_CARE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->HARDWARE_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->HEALTH:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->HINDU_TEMPLE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->HOME_GOODS_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->HOSPITAL:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->INSURANCE_AGENCY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->JEWELRY_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->LAUNDRY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->LAWYER:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x36

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->LIBRARY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x37

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->LIQUOR_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x38

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->LOCAL_GOVERNMENT_OFFICE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x39

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->LOCKSMITH:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->LODGING:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->MEAL_DELIVERY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->MEAL_TAKEAWAY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->MOSQUE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->MOVIE_RENTAL:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->MOVIE_THEATER:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x40

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->MOVING_COMPANY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x41

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->MUSEUM:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x42

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->NIGHT_CLUB:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x43

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PAINTER:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x44

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PARK:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x45

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PARKING:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x46

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PET_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x47

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PHARMACY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x48

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PHYSIOTHERAPIST:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x49

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PLACE_OF_WORSHIP:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PLUMBER:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POLICE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POST_OFFICE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->REAL_ESTATE_AGENCY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->RESTAURANT:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ROOFING_CONTRACTOR:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x50

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->RV_PARK:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SCHOOL:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x52

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SHOE_STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x53

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SHOPPING_MALL:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x54

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SPA:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x55

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->STADIUM:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x56

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->STORAGE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x57

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->STORE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x58

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBWAY_STATION:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x59

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SYNAGOGUE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->TAXI_STAND:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->TRAIN_STATION:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->TRAVEL_AGENCY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->UNIVERSITY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->VETERINARY_CARE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ZOO:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x60

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ADMINISTRATIVE_AREA_LEVEL_1:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x61

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ADMINISTRATIVE_AREA_LEVEL_2:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x62

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ADMINISTRATIVE_AREA_LEVEL_3:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x63

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->COLLOQUIAL_AREA:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x64

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->COUNTRY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x65

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->FLOOR:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x66

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->GEOCODE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x67

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->INTERSECTION:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x68

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->LOCALITY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x69

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->NATURAL_FEATURE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->NEIGHBORHOOD:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POLITICAL:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POINT_OF_INTEREST:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POST_BOX:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POSTAL_CODE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POSTAL_CODE_PREFIX:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x70

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->POSTAL_TOWN:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x71

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->PREMISE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x72

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ROOM:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x73

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ROUTE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x74

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->STREET_ADDRESS:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x75

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x76

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_1:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x77

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_2:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x78

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_3:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x79

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_4:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBLOCALITY_LEVEL_5:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->SUBPREMISE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->TRANSIT_STATION:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/PlaceTypes;->ALL:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gms/location/places/PlaceTypes;->ALL:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceTypes;->HA:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/location/places/PlaceTypes;->ALL:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    sget-object v2, Lcom/google/android/gms/location/places/PlaceTypes;->HA:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;
    .locals 1
    .param p0, "typeName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/PlaceTypes;->HA:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    return-object v0
.end method
