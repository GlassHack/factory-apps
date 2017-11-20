.class public final enum Lcom/google/android/location/activity/a/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/activity/a/t;

.field public static final enum b:Lcom/google/android/location/activity/a/t;

.field public static final enum c:Lcom/google/android/location/activity/a/t;

.field public static final enum d:Lcom/google/android/location/activity/a/t;

.field public static final enum e:Lcom/google/android/location/activity/a/t;

.field public static final enum f:Lcom/google/android/location/activity/a/t;

.field public static final enum g:Lcom/google/android/location/activity/a/t;

.field public static final enum h:Lcom/google/android/location/activity/a/t;

.field public static final enum i:Lcom/google/android/location/activity/a/t;

.field public static final enum j:Lcom/google/android/location/activity/a/t;

.field public static final enum k:Lcom/google/android/location/activity/a/t;

.field public static final enum l:Lcom/google/android/location/activity/a/t;

.field private static final synthetic m:[Lcom/google/android/location/activity/a/t;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "IN_VEHICLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->a:Lcom/google/android/location/activity/a/t;

    .line 28
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "IN_CAR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->b:Lcom/google/android/location/activity/a/t;

    .line 30
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "ON_BICYCLE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->c:Lcom/google/android/location/activity/a/t;

    .line 32
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "ON_FOOT"

    invoke-direct {v0, v1, v6}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->d:Lcom/google/android/location/activity/a/t;

    .line 34
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "WALKING"

    invoke-direct {v0, v1, v7}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->e:Lcom/google/android/location/activity/a/t;

    .line 36
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "RUNNING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->f:Lcom/google/android/location/activity/a/t;

    .line 38
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "STILL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->g:Lcom/google/android/location/activity/a/t;

    .line 40
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->h:Lcom/google/android/location/activity/a/t;

    .line 43
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "TILTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->i:Lcom/google/android/location/activity/a/t;

    .line 45
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "LEG_SHAKE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->j:Lcom/google/android/location/activity/a/t;

    .line 48
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "INCONSISTENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->k:Lcom/google/android/location/activity/a/t;

    .line 50
    new-instance v0, Lcom/google/android/location/activity/a/t;

    const-string v1, "OFF_BODY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/a/t;->l:Lcom/google/android/location/activity/a/t;

    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/location/activity/a/t;

    sget-object v1, Lcom/google/android/location/activity/a/t;->a:Lcom/google/android/location/activity/a/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/activity/a/t;->b:Lcom/google/android/location/activity/a/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/activity/a/t;->c:Lcom/google/android/location/activity/a/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/activity/a/t;->d:Lcom/google/android/location/activity/a/t;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/location/activity/a/t;->e:Lcom/google/android/location/activity/a/t;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/activity/a/t;->f:Lcom/google/android/location/activity/a/t;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/location/activity/a/t;->g:Lcom/google/android/location/activity/a/t;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/location/activity/a/t;->h:Lcom/google/android/location/activity/a/t;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/location/activity/a/t;->i:Lcom/google/android/location/activity/a/t;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/location/activity/a/t;->j:Lcom/google/android/location/activity/a/t;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/location/activity/a/t;->k:Lcom/google/android/location/activity/a/t;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/location/activity/a/t;->l:Lcom/google/android/location/activity/a/t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/activity/a/t;->m:[Lcom/google/android/location/activity/a/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/activity/a/t;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/location/activity/a/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/a/t;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/activity/a/t;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/location/activity/a/t;->m:[Lcom/google/android/location/activity/a/t;

    invoke-virtual {v0}, [Lcom/google/android/location/activity/a/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/activity/a/t;

    return-object v0
.end method
