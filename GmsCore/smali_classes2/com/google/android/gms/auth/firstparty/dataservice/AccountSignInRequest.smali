.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/m;


# instance fields
.field final a:I

.field b:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field c:Z

.field d:Z

.field e:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field f:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/m;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a:I

    .line 50
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a:I

    .line 41
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->b:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 42
    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->c:Z

    .line 43
    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->d:Z

    .line 44
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .line 45
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .line 63
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->b:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 54
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .line 109
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->c:Z

    .line 72
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    return-object v0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->d:Z

    .line 87
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->c:Z

    return v0
.end method

.method public final c(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->d:Z

    .line 100
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->d:Z

    return v0
.end method

.method public final d()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/m;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;Landroid/os/Parcel;I)V

    .line 130
    return-void
.end method
