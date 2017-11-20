.class public Lcom/google/android/gms/fitness/request/SubscribeRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/Subscription;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/google/android/gms/fitness/request/v;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Subscription;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->a:I

    .line 56
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->b:Lcom/google/android/gms/fitness/data/Subscription;

    .line 57
    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->c:Z

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/Subscription;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->b:Lcom/google/android/gms/fitness/data/Subscription;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->c:Z

    return v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "subscription"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/v;->a(Lcom/google/android/gms/fitness/request/SubscribeRequest;Landroid/os/Parcel;I)V

    .line 145
    return-void
.end method
