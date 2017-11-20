.class public final enum Lcom/google/android/location/places/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/places/l;

.field public static final enum b:Lcom/google/android/location/places/l;

.field public static final enum c:Lcom/google/android/location/places/l;

.field public static final enum d:Lcom/google/android/location/places/l;

.field public static final enum e:Lcom/google/android/location/places/l;

.field public static final enum f:Lcom/google/android/location/places/l;

.field public static final enum g:Lcom/google/android/location/places/l;

.field public static final enum h:Lcom/google/android/location/places/l;

.field private static final synthetic i:[Lcom/google/android/location/places/l;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/google/android/location/places/l;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/places/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/places/l;->a:Lcom/google/android/location/places/l;

    .line 79
    new-instance v0, Lcom/google/android/location/places/l;

    const-string v1, "GET_AUTOCOMPLETE_PREDICTIONS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/places/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/places/l;->b:Lcom/google/android/location/places/l;

    .line 80
    new-instance v0, Lcom/google/android/location/places/l;

    const-string v1, "GET_BY_PHONE_NUMBER"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/places/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/places/l;->c:Lcom/google/android/location/places/l;

    .line 81
    new-instance v0, Lcom/google/android/location/places/l;

    const-string v1, "GET_BY_LAT_LNG"

    invoke-direct {v0, v1, v6}, Lcom/google/android/location/places/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/places/l;->d:Lcom/google/android/location/places/l;

    .line 82
    new-instance v0, Lcom/google/android/location/places/l;

    const-string v1, "GET_PLACE_BY_ID"

    invoke-direct {v0, v1, v7}, Lcom/google/android/location/places/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/places/l;->e:Lcom/google/android/location/places/l;

    .line 83
    new-instance v0, Lcom/google/android/location/places/l;

    const-string v1, "GET_PLACE_PHOTO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/places/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/places/l;->f:Lcom/google/android/location/places/l;

    .line 84
    new-instance v0, Lcom/google/android/location/places/l;

    const-string v1, "ADD_A_PLACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/places/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/places/l;->g:Lcom/google/android/location/places/l;

    .line 85
    new-instance v0, Lcom/google/android/location/places/l;

    const-string v1, "WIFI_MODEL_DOWNLOAD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/places/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/places/l;->h:Lcom/google/android/location/places/l;

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/location/places/l;

    sget-object v1, Lcom/google/android/location/places/l;->a:Lcom/google/android/location/places/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/places/l;->b:Lcom/google/android/location/places/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/places/l;->c:Lcom/google/android/location/places/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/places/l;->d:Lcom/google/android/location/places/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/location/places/l;->e:Lcom/google/android/location/places/l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/places/l;->f:Lcom/google/android/location/places/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/location/places/l;->g:Lcom/google/android/location/places/l;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/location/places/l;->h:Lcom/google/android/location/places/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/places/l;->i:[Lcom/google/android/location/places/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/places/l;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/google/android/location/places/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/l;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/places/l;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/location/places/l;->i:[Lcom/google/android/location/places/l;

    invoke-virtual {v0}, [Lcom/google/android/location/places/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/places/l;

    return-object v0
.end method
