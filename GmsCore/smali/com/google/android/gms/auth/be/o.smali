.class final Lcom/google/android/gms/auth/be/o;
.super Lcom/google/android/gms/auth/firstparty/dataservice/ap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/be/GoogleAccountDataService;

.field private final b:Lcom/google/android/gms/auth/a/k;

.field private final c:Lcom/google/android/gms/auth/be/p;

.field private final d:Lcom/google/android/gms/auth/be/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/be/GoogleAccountDataService;Lcom/google/android/gms/auth/a/k;Lcom/google/android/gms/auth/be/p;Lcom/google/android/gms/auth/be/s;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/gms/auth/be/o;->a:Lcom/google/android/gms/auth/be/GoogleAccountDataService;

    invoke-direct {p0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    .line 72
    iput-object p3, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    .line 73
    iput-object p4, p0, Lcom/google/android/gms/auth/be/o;->d:Lcom/google/android/gms/auth/be/s;

    .line 74
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->d()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->e()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-static {}, Lcom/google/android/gms/auth/be/p;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 275
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-static {p1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-static {p1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-static {p1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->b()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/be/p;->a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v0, v0, Lcom/google/android/gms/auth/a/k;->a:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->b:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;I)Z

    .line 341
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->e()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->d:Lcom/google/android/gms/auth/be/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/s;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a()Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->b()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->c()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->d()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->a()Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->b()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->n()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->o()Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->p()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 192
    const-string v0, "TokenRequest cannot be null!"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->n()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->o()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 197
    sget-object v0, Lcom/google/android/gms/common/a/a;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "auth.getToken.response.status."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/google/android/gms/common/status/StatusService;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "GoogleAccountDataService"

    const-string v2, "Exception thrown while executing getToken."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->a()Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->b()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/be/p;->b(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 328
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->d:Lcom/google/android/gms/auth/be/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/s;->a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/auth/be/p;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/p;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->n()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->o()Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->p()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->b:Lcom/google/android/gms/auth/a/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/k;->a(I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/auth/be/o;->c:Lcom/google/android/gms/auth/be/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/p;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
