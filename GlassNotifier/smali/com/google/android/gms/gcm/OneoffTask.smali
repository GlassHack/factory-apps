.class public Lcom/google/android/gms/gcm/OneoffTask;
.super Lcom/google/android/gms/gcm/Task;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/OneoffTask$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/gcm/OneoffTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asO:J

.field private final asP:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask$1;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/OneoffTask$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/OneoffTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/gcm/Task;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asP:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asO:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asO:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asP:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gms/gcm/OneoffTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/gms/gcm/OneoffTask$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/gcm/OneoffTask$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/android/gms/gcm/OneoffTask$Builder;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Lcom/google/android/gms/gcm/Task$Builder;)V

    invoke-static {p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->a(Lcom/google/android/gms/gcm/OneoffTask$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asO:J

    invoke-static {p1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->b(Lcom/google/android/gms/gcm/OneoffTask$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asP:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/gcm/OneoffTask$Builder;Lcom/google/android/gms/gcm/OneoffTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/gcm/OneoffTask$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/gcm/OneoffTask$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(Lcom/google/android/gms/gcm/OneoffTask$Builder;)V

    return-void
.end method


# virtual methods
.method public getWindowEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asP:J

    return-wide v0
.end method

.method public getWindowStart()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asO:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/gcm/Task;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asO:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask;->asP:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
