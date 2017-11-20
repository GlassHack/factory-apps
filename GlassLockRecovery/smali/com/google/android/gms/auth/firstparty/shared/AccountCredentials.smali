.class public Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/a;


# instance fields
.field pg:Ljava/lang/String;

.field rA:Z

.field rB:Ljava/lang/String;

.field rC:Ljava/lang/String;

.field rD:Ljava/lang/String;

.field rE:Ljava/lang/String;

.field rF:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->version:I

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "isBrowserRequired"    # Z
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "longLivedLoginToken"    # Ljava/lang/String;
    .param p5, "authorizationCode"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "verifier"    # Ljava/lang/String;
    .param p8, "redirectUri"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->version:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rA:Z

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->pg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rB:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rC:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rD:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rE:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->version:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rA:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rB:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->pg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rC:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rD:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rF:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->pg:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rC:Ljava/lang/String;

    return-object v0
.end method

.method public getLongLivedLoginToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rB:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rD:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rF:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rE:Ljava/lang/String;

    return-object v0
.end method

.method public isBrowserAuthenticationRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rA:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->pg:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthorizationCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0
    .param p1, "authorizationCode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rC:Ljava/lang/String;

    return-object p0
.end method

.method public setBrowserAuthenticationRequired(Z)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0
    .param p1, "isRequired"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rA:Z

    return-object p0
.end method

.method public setLongLivedLoginToken(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rB:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rD:Ljava/lang/String;

    return-object p0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rF:Ljava/lang/String;

    return-object p0
.end method

.method public setVerifier(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0
    .param p1, "verifier"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->rE:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/a;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Landroid/os/Parcel;I)V

    return-void
.end method
