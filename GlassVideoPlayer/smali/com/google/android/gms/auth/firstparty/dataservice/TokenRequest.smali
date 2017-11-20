.class public Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/h;


# instance fields
.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/os/Bundle;

.field volatile f:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field volatile g:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

.field volatile h:Z

.field volatile i:Z

.field j:Ljava/lang/String;

.field k:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field l:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field volatile m:Z

.field volatile n:Z

.field volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->e:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;ZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;ZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->e:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->e:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->g:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->h:Z

    iput-boolean p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->i:Z

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->k:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->l:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->m:Z

    iput-boolean p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->n:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->e:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b:I

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->o:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 1

    const-string v0, " Consent cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->k:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/h;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Landroid/os/Parcel;I)V

    return-void
.end method
