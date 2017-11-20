.class public Lcom/google/android/gms/fitness/data/Fields;
.super Ljava/lang/Object;


# static fields
.field public static final ACCURACY:Lcom/google/android/gms/fitness/data/Field;

.field public static final ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

.field public static final ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final AVERAGE:Lcom/google/android/gms/fitness/data/Field;

.field public static final BPM:Lcom/google/android/gms/fitness/data/Field;

.field public static final CALORIES:Lcom/google/android/gms/fitness/data/Field;

.field public static final CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final DISTANCE:Lcom/google/android/gms/fitness/data/Field;

.field public static final DURATION:Lcom/google/android/gms/fitness/data/Field;

.field public static final Da:Lcom/google/android/gms/fitness/data/Field;

.field public static final Db:Lcom/google/android/gms/fitness/data/Field;

.field public static final Dc:Lcom/google/android/gms/fitness/data/Field;

.field public static final Dd:Lcom/google/android/gms/fitness/data/Field;

.field public static final HEIGHT:Lcom/google/android/gms/fitness/data/Field;

.field public static final HIGH_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final HIGH_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final LATITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final LOW_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final LOW_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

.field public static final MAX:Lcom/google/android/gms/fitness/data/Field;

.field public static final MIN:Lcom/google/android/gms/fitness/data/Field;

.field public static final NUM_SEGMENTS:Lcom/google/android/gms/fitness/data/Field;

.field public static final REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

.field public static final RPM:Lcom/google/android/gms/fitness/data/Field;

.field public static final SPEED:Lcom/google/android/gms/fitness/data/Field;

.field public static final STEPS:Lcom/google/android/gms/fitness/data/Field;

.field public static final WATTS:Lcom/google/android/gms/fitness/data/Field;

.field public static final WEIGHT:Lcom/google/android/gms/fitness/data/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "activity"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "confidence"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "steps"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->STEPS:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "duration"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->DURATION:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "bpm"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->BPM:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "latitude"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "longitude"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "accuracy"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->ACCURACY:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "altitude"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "distance"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "height"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->HEIGHT:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v1, "weight"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->WEIGHT:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "speed"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->SPEED:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "rpm"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->RPM:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "revolutions"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "calories"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->CALORIES:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v1, "watts"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->WATTS:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "num_segments"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->NUM_SEGMENTS:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "average"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "max"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->MAX:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "min"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->MIN:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "low_latitude"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->LOW_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "low_longitude"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->LOW_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "high_latitude"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->HIGH_LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "high_longitude"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->HIGH_LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "edge_type"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->Da:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->Db:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v1, "y"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->Dc:Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string/jumbo v1, "z"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/data/Fields;->Dd:Lcom/google/android/gms/fitness/data/Field;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
