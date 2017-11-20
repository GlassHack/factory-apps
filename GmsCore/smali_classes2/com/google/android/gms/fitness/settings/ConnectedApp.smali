.class public Lcom/google/android/gms/fitness/settings/ConnectedApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/gms/fitness/settings/e;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/settings/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->c:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->d:[I

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/fitness/settings/ConnectedApp;->d:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 76
    return-void
.end method
