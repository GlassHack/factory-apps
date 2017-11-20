.class public Lcom/google/android/gms/auth/AccountChangeEventsRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/c;


# instance fields
.field final a:I

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/auth/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->CREATOR:Lcom/google/android/gms/auth/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->a:I

    .line 37
    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->a:I

    .line 31
    iput p2, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->b:I

    .line 32
    iput-object p3, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->c:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/c;->a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;Landroid/os/Parcel;)V

    .line 66
    return-void
.end method
