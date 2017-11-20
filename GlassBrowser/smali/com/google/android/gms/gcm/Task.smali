.class public abstract Lcom/google/android/gms/gcm/Task;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/Task$Builder;
    }
.end annotation


# static fields
.field protected static final UNINITIALIZED:J = -0x1L


# instance fields
.field private final Fu:Ljava/lang/String;

.field private final Fv:Z

.field private final Fw:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/gcm/Task;->Fu:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->Fv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->Fw:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->Fu:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->Fv:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/gcm/Task;->Fw:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method constructor <init>(Lcom/google/android/gms/gcm/Task$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/gcm/Task$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->gcmTaskService:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->Fu:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->updateCurrent:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->Fv:Z

    iget-boolean v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->isPersisted:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->Fw:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->Fu:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isPersisted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->Fw:Z

    return v0
.end method

.method public isUpdateCurrent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->Fv:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->Fu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->Fv:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->Fw:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
