.class public abstract enum Lcom/google/android/gms/fitness/sensors/local/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/fitness/sensors/local/d;

.field public static final enum b:Lcom/google/android/gms/fitness/sensors/local/d;

.field public static final enum c:Lcom/google/android/gms/fitness/sensors/local/d;

.field private static final synthetic f:[Lcom/google/android/gms/fitness/sensors/local/d;


# instance fields
.field final d:Lcom/google/android/gms/fitness/data/DataType;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/fitness/sensors/local/e;

    const-string v1, "ACCELEROMETER"

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->j:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/local/e;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataType;)V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/local/d;->a:Lcom/google/android/gms/fitness/sensors/local/d;

    .line 35
    new-instance v0, Lcom/google/android/gms/fitness/sensors/local/f;

    const-string v1, "HEART_RATE"

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->k:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/local/f;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataType;)V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/local/d;->b:Lcom/google/android/gms/fitness/sensors/local/d;

    .line 50
    new-instance v0, Lcom/google/android/gms/fitness/sensors/local/g;

    const-string v1, "STEP_COUNTER"

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/local/g;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataType;)V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/local/d;->c:Lcom/google/android/gms/fitness/sensors/local/d;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/fitness/sensors/local/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/fitness/sensors/local/d;->a:Lcom/google/android/gms/fitness/sensors/local/d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/fitness/sensors/local/d;->b:Lcom/google/android/gms/fitness/sensors/local/d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/fitness/sensors/local/d;->c:Lcom/google/android/gms/fitness/sensors/local/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/sensors/local/d;->f:[Lcom/google/android/gms/fitness/sensors/local/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p3, p0, Lcom/google/android/gms/fitness/sensors/local/d;->e:I

    .line 94
    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/local/d;->d:Lcom/google/android/gms/fitness/data/DataType;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/google/android/gms/fitness/data/DataType;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/fitness/sensors/local/d;-><init>(Ljava/lang/String;IILcom/google/android/gms/fitness/data/DataType;)V

    return-void
.end method

.method static synthetic a(JJ)J
    .locals 10

    .prologue
    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long v2, p0, p2

    sub-long v6, v4, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->aq:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    cmp-long v1, p0, v4

    if-gtz v1, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v1, p0, v6

    if-lez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    move-wide v0, v4

    :goto_1
    return-wide v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fitness/sensors/local/d;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/gms/fitness/sensors/local/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/local/d;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/fitness/sensors/local/d;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gms/fitness/sensors/local/d;->f:[Lcom/google/android/gms/fitness/sensors/local/d;

    invoke-virtual {v0}, [Lcom/google/android/gms/fitness/sensors/local/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fitness/sensors/local/d;

    return-object v0
.end method


# virtual methods
.method abstract a(Landroid/hardware/SensorEvent;Lcom/google/android/gms/fitness/data/DataSource;JJ)Lcom/google/android/gms/fitness/data/DataPoint;
.end method

.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/d;->d:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/gms/fitness/sensors/local/d;->e:I

    return v0
.end method
