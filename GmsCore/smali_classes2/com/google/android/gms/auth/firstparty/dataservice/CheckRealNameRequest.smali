.class public Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/n;


# instance fields
.field final a:I

.field b:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/n;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->a:I

    .line 41
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->a:I

    .line 33
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->b:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 34
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->c:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->d:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->b:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/n;->a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;Landroid/os/Parcel;I)V

    .line 49
    return-void
.end method
