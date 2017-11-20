.class public Lcom/google/android/gms/gcm/PeriodicTask;
.super Lcom/google/android/gms/gcm/Task;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/gms/gcm/ap;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/ap;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/PeriodicTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/gcm/Task;-><init>()V

    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->a:J

    .line 33
    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->b:J

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->a:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->b:J

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/gcm/aq;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Lcom/google/android/gms/gcm/bd;)V

    .line 38
    iget-wide v0, p1, Lcom/google/android/gms/gcm/aq;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->a:J

    .line 39
    iget-wide v0, p1, Lcom/google/android/gms/gcm/aq;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->b:J

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/gcm/aq;B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(Lcom/google/android/gms/gcm/aq;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->b:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/gcm/Task;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    return-void
.end method
