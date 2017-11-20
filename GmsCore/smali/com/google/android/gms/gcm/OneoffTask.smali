.class public Lcom/google/android/gms/gcm/OneoffTask;
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
    .line 65
    new-instance v0, Lcom/google/android/gms/gcm/am;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/am;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/OneoffTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/gcm/Task;-><init>()V

    .line 28
    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->b:J

    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->a:J

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Landroid/os/Parcel;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->a:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->b:J

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/gcm/an;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Lcom/google/android/gms/gcm/bd;)V

    .line 34
    iget-wide v0, p1, Lcom/google/android/gms/gcm/an;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->a:J

    .line 35
    iget-wide v0, p1, Lcom/google/android/gms/gcm/an;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->b:J

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/gcm/an;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(Lcom/google/android/gms/gcm/an;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->b:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/gcm/Task;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    return-void
.end method
