.class public Lcom/google/android/gms/fitness/data/DerivedDataSources;
.super Ljava/lang/Object;


# static fields
.field public static final ESTIMATED_STEP_DELTAS:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    const-string v1, "estimated_steps"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->GOOGLE_PLAY_SERVICES:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setApplication(Lcom/google/android/gms/fitness/data/Application;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/DerivedDataSources;->ESTIMATED_STEP_DELTAS:Lcom/google/android/gms/fitness/data/DataSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1
    .param p0, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method
