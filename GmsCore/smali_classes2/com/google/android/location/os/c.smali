.class public final enum Lcom/google/android/location/os/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Lcom/google/android/location/os/c;

.field public static final enum B:Lcom/google/android/location/os/c;

.field public static final enum C:Lcom/google/android/location/os/c;

.field public static final enum D:Lcom/google/android/location/os/c;

.field public static final enum E:Lcom/google/android/location/os/c;

.field public static final enum F:Lcom/google/android/location/os/c;

.field public static final enum G:Lcom/google/android/location/os/c;

.field public static final enum H:Lcom/google/android/location/os/c;

.field public static final enum I:Lcom/google/android/location/os/c;

.field public static final enum J:Lcom/google/android/location/os/c;

.field public static final enum K:Lcom/google/android/location/os/c;

.field public static final enum L:Lcom/google/android/location/os/c;

.field public static final enum M:Lcom/google/android/location/os/c;

.field public static final enum N:Lcom/google/android/location/os/c;

.field public static final enum O:Lcom/google/android/location/os/c;

.field public static final enum P:Lcom/google/android/location/os/c;

.field public static final enum Q:Lcom/google/android/location/os/c;

.field public static final enum R:Lcom/google/android/location/os/c;

.field public static final enum S:Lcom/google/android/location/os/c;

.field public static final enum T:Lcom/google/android/location/os/c;

.field public static final enum U:Lcom/google/android/location/os/c;

.field public static final enum V:Lcom/google/android/location/os/c;

.field public static final enum W:Lcom/google/android/location/os/c;

.field public static final enum X:Lcom/google/android/location/os/c;

.field public static final enum Y:Lcom/google/android/location/os/c;

.field public static final enum Z:Lcom/google/android/location/os/c;

.field public static final enum a:Lcom/google/android/location/os/c;

.field public static final enum aa:Lcom/google/android/location/os/c;

.field public static final enum ab:Lcom/google/android/location/os/c;

.field public static final enum ac:Lcom/google/android/location/os/c;

.field private static final synthetic ae:[Lcom/google/android/location/os/c;

.field public static final enum b:Lcom/google/android/location/os/c;

.field public static final enum c:Lcom/google/android/location/os/c;

.field public static final enum d:Lcom/google/android/location/os/c;

.field public static final enum e:Lcom/google/android/location/os/c;

.field public static final enum f:Lcom/google/android/location/os/c;

.field public static final enum g:Lcom/google/android/location/os/c;

.field public static final enum h:Lcom/google/android/location/os/c;

.field public static final enum i:Lcom/google/android/location/os/c;

.field public static final enum j:Lcom/google/android/location/os/c;

.field public static final enum k:Lcom/google/android/location/os/c;

.field public static final enum l:Lcom/google/android/location/os/c;

.field public static final enum m:Lcom/google/android/location/os/c;

.field public static final enum n:Lcom/google/android/location/os/c;

.field public static final enum o:Lcom/google/android/location/os/c;

.field public static final enum p:Lcom/google/android/location/os/c;

.field public static final enum q:Lcom/google/android/location/os/c;

.field public static final enum r:Lcom/google/android/location/os/c;

.field public static final enum s:Lcom/google/android/location/os/c;

.field public static final enum t:Lcom/google/android/location/os/c;

.field public static final enum u:Lcom/google/android/location/os/c;

.field public static final enum v:Lcom/google/android/location/os/c;

.field public static final enum w:Lcom/google/android/location/os/c;

.field public static final enum x:Lcom/google/android/location/os/c;

.field public static final enum y:Lcom/google/android/location/os/c;

.field public static final enum z:Lcom/google/android/location/os/c;


# instance fields
.field public final ad:Lcom/google/android/location/os/d;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "INITIALIZE"

    sget-object v2, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->a:Lcom/google/android/location/os/c;

    .line 17
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "QUIT"

    sget-object v2, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->b:Lcom/google/android/location/os/c;

    .line 18
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "SET_PERIOD"

    sget-object v2, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->c:Lcom/google/android/location/os/c;

    .line 19
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "AIRPLANE_MODE_CHANGED"

    sget-object v2, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->d:Lcom/google/android/location/os/c;

    .line 20
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "ALARM_RING"

    sget-object v2, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->e:Lcom/google/android/location/os/c;

    .line 21
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "BATTERY_STATE_CHANGED"

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->f:Lcom/google/android/location/os/c;

    .line 22
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "CELL_SCAN_RESULTS"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->g:Lcom/google/android/location/os/c;

    .line 23
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "CELL_SIGNAL_STRENGTH"

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->h:Lcom/google/android/location/os/c;

    .line 24
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "FULL_COLLECTION_MODE_CHANGED"

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->i:Lcom/google/android/location/os/c;

    .line 25
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GLS_DEVICE_LOCATION_RESPONSE"

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->j:Lcom/google/android/location/os/c;

    .line 26
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GLS_MODEL_QUERY_RESPONSE"

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->k:Lcom/google/android/location/os/c;

    .line 27
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GLS_QUERY_RESPONSE"

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->l:Lcom/google/android/location/os/c;

    .line 28
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GLS_UPLOAD_RESPONSE"

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->m:Lcom/google/android/location/os/c;

    .line 29
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GPS_LOCATION"

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->n:Lcom/google/android/location/os/c;

    .line 30
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "NETWORK_CHANGED"

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->o:Lcom/google/android/location/os/c;

    .line 31
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "NLP_PARAMS_CHANGED"

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->p:Lcom/google/android/location/os/c;

    .line 32
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "SCREEN_STATE_CHANGED"

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->q:Lcom/google/android/location/os/c;

    .line 33
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "WIFI_SCAN_RESULTS"

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->r:Lcom/google/android/location/os/c;

    .line 34
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "WIFI_STATE_CHANGED"

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->s:Lcom/google/android/location/os/c;

    .line 35
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "INIT_NETWORK_PROVIDER"

    const/16 v2, 0x13

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->t:Lcom/google/android/location/os/c;

    .line 36
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "QUIT_NETWORK_PROVIDER"

    const/16 v2, 0x14

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->u:Lcom/google/android/location/os/c;

    .line 37
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "POWER_SAVE_MODE_CHANGED"

    const/16 v2, 0x15

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->v:Lcom/google/android/location/os/c;

    .line 39
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "ALARM_RESET"

    const/16 v2, 0x16

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->w:Lcom/google/android/location/os/c;

    .line 40
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "ALARM_RESET_WINDOW"

    const/16 v2, 0x17

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->x:Lcom/google/android/location/os/c;

    .line 41
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "ALARM_CANCEL"

    const/16 v2, 0x18

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->y:Lcom/google/android/location/os/c;

    .line 42
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "CELL_REQUEST_SCAN"

    const/16 v2, 0x19

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->z:Lcom/google/android/location/os/c;

    .line 43
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GLS_DEVICE_LOCATION_QUERY"

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->A:Lcom/google/android/location/os/c;

    .line 44
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GLS_QUERY"

    const/16 v2, 0x1b

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->B:Lcom/google/android/location/os/c;

    .line 45
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GLS_UPLOAD"

    const/16 v2, 0x1c

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->C:Lcom/google/android/location/os/c;

    .line 46
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GLS_MODEL_QUERY"

    const/16 v2, 0x1d

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->D:Lcom/google/android/location/os/c;

    .line 47
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "PERSISTENT_STATE_DIR"

    const/16 v2, 0x1e

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->E:Lcom/google/android/location/os/c;

    .line 48
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "MAKE_FILE_PRIVATE"

    const/16 v2, 0x1f

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->F:Lcom/google/android/location/os/c;

    .line 49
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "COLLECTION_POLICY_STATE_DIR"

    const/16 v2, 0x20

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->G:Lcom/google/android/location/os/c;

    .line 50
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "SEEN_DEVICES_DIR"

    const/16 v2, 0x21

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->H:Lcom/google/android/location/os/c;

    .line 51
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "NLP_PARAMS_STATE_DIR"

    const/16 v2, 0x22

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->I:Lcom/google/android/location/os/c;

    .line 52
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "COLLECTOR_STATE_DIR"

    const/16 v2, 0x23

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->J:Lcom/google/android/location/os/c;

    .line 53
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GET_ENCRYPTION_KEY"

    const/16 v2, 0x24

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->K:Lcom/google/android/location/os/c;

    .line 54
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "GPS_ON_OFF"

    const/16 v2, 0x25

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->L:Lcom/google/android/location/os/c;

    .line 55
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "IS_GPS_ENABLED"

    const/16 v2, 0x26

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->M:Lcom/google/android/location/os/c;

    .line 56
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "LOCATION_REPORT"

    const/16 v2, 0x27

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->N:Lcom/google/android/location/os/c;

    .line 57
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "STATUS_REPORT"

    const/16 v2, 0x28

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->O:Lcom/google/android/location/os/c;

    .line 58
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "LOG"

    const/16 v2, 0x29

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->P:Lcom/google/android/location/os/c;

    .line 59
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "WAKELOCK_ACQUIRE"

    const/16 v2, 0x2a

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->Q:Lcom/google/android/location/os/c;

    .line 60
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "WAKELOCK_RELEASE"

    const/16 v2, 0x2b

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->R:Lcom/google/android/location/os/c;

    .line 61
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "WIFI_REQUEST_SCAN"

    const/16 v2, 0x2c

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->S:Lcom/google/android/location/os/c;

    .line 62
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "USER_REPORT_MAPS_ISSUE"

    const/16 v2, 0x2d

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->T:Lcom/google/android/location/os/c;

    .line 63
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "ACTIVITY_DETECTION_START"

    const/16 v2, 0x2e

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->U:Lcom/google/android/location/os/c;

    .line 64
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "ACTIVITY_DETECTION_RESULT"

    const/16 v2, 0x2f

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->V:Lcom/google/android/location/os/c;

    .line 65
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "ACTIVITY_INSUFFICIENT_SAMPLES"

    const/16 v2, 0x30

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->W:Lcom/google/android/location/os/c;

    .line 66
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "SIGNIFICANT_MOTION"

    const/16 v2, 0x31

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->X:Lcom/google/android/location/os/c;

    .line 67
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "WAKE_UP_TILT"

    const/16 v2, 0x32

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->Y:Lcom/google/android/location/os/c;

    .line 68
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "LOW_POWER_MODE_OFF"

    const/16 v2, 0x33

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->Z:Lcom/google/android/location/os/c;

    .line 69
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "LOW_POWER_MODE_ON"

    const/16 v2, 0x34

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->aa:Lcom/google/android/location/os/c;

    .line 70
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "VEHICLE_EXIT_STATE_CHANGE"

    const/16 v2, 0x35

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->ab:Lcom/google/android/location/os/c;

    .line 71
    new-instance v0, Lcom/google/android/location/os/c;

    const-string v1, "VEHICLE_EXIT_DETECTED"

    const/16 v2, 0x36

    sget-object v3, Lcom/google/android/location/os/d;->b:Lcom/google/android/location/os/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/os/c;-><init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V

    sput-object v0, Lcom/google/android/location/os/c;->ac:Lcom/google/android/location/os/c;

    .line 14
    const/16 v0, 0x37

    new-array v0, v0, [Lcom/google/android/location/os/c;

    sget-object v1, Lcom/google/android/location/os/c;->a:Lcom/google/android/location/os/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/os/c;->b:Lcom/google/android/location/os/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/os/c;->c:Lcom/google/android/location/os/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/location/os/c;->d:Lcom/google/android/location/os/c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/location/os/c;->e:Lcom/google/android/location/os/c;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/os/c;->f:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/location/os/c;->g:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/location/os/c;->h:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/location/os/c;->i:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/location/os/c;->j:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/location/os/c;->k:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/location/os/c;->l:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/location/os/c;->m:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/location/os/c;->n:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/location/os/c;->o:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/location/os/c;->p:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/location/os/c;->q:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/location/os/c;->r:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/location/os/c;->s:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/location/os/c;->t:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/location/os/c;->u:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/location/os/c;->v:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/location/os/c;->w:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/location/os/c;->x:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/location/os/c;->y:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/location/os/c;->z:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/location/os/c;->A:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/location/os/c;->B:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/android/location/os/c;->C:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/android/location/os/c;->D:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/android/location/os/c;->E:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/android/location/os/c;->F:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/android/location/os/c;->G:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/android/location/os/c;->H:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/google/android/location/os/c;->I:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/google/android/location/os/c;->J:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/google/android/location/os/c;->K:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/google/android/location/os/c;->L:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/google/android/location/os/c;->M:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/google/android/location/os/c;->N:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/google/android/location/os/c;->O:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/google/android/location/os/c;->P:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/google/android/location/os/c;->Q:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/google/android/location/os/c;->R:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/google/android/location/os/c;->S:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/google/android/location/os/c;->T:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/google/android/location/os/c;->U:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/google/android/location/os/c;->V:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/google/android/location/os/c;->W:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/google/android/location/os/c;->X:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/google/android/location/os/c;->Y:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/google/android/location/os/c;->Z:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/google/android/location/os/c;->aa:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/google/android/location/os/c;->ab:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/google/android/location/os/c;->ac:Lcom/google/android/location/os/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/os/c;->ae:[Lcom/google/android/location/os/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/location/os/d;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/google/android/location/os/c;->ad:Lcom/google/android/location/os/d;

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/os/c;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/android/location/os/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/c;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/os/c;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/location/os/c;->ae:[Lcom/google/android/location/os/c;

    invoke-virtual {v0}, [Lcom/google/android/location/os/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/os/c;

    return-object v0
.end method
