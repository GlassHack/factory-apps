.class public Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/at;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/at;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/at;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/at;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->a:I

    .line 41
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->b:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->c:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->d:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->e:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/at;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;Landroid/os/Parcel;I)V

    .line 60
    return-void
.end method
