.class public final Lcom/google/android/gms/auth/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Lcom/google/android/gms/common/a/b;

.field public static B:Lcom/google/android/gms/common/a/b;

.field public static C:Lcom/google/android/gms/common/a/b;

.field public static D:Lcom/google/android/gms/common/a/b;

.field public static E:Lcom/google/android/gms/common/a/b;

.field public static F:Lcom/google/android/gms/common/a/b;

.field public static G:Lcom/google/android/gms/common/a/b;

.field public static H:Lcom/google/android/gms/common/a/b;

.field public static I:Lcom/google/android/gms/common/a/b;

.field public static J:Lcom/google/android/gms/common/a/b;

.field public static K:Lcom/google/android/gms/common/a/b;

.field public static L:Lcom/google/android/gms/common/a/b;

.field public static M:Lcom/google/android/gms/common/a/b;

.field public static N:Lcom/google/android/gms/common/a/b;

.field public static O:Lcom/google/android/gms/common/a/b;

.field public static P:Lcom/google/android/gms/common/a/b;

.field public static Q:Lcom/google/android/gms/common/a/b;

.field public static R:Lcom/google/android/gms/common/a/b;

.field public static S:Lcom/google/android/gms/common/a/b;

.field public static T:Lcom/google/android/gms/common/a/b;

.field public static U:Lcom/google/android/gms/common/a/b;

.field public static V:Lcom/google/android/gms/common/a/b;

.field public static W:Lcom/google/android/gms/common/a/b;

.field public static a:Lcom/google/android/gms/common/a/b;

.field public static b:Lcom/google/android/gms/common/a/b;

.field public static c:Lcom/google/android/gms/common/a/b;

.field public static d:Lcom/google/android/gms/common/a/b;

.field public static e:Lcom/google/android/gms/common/a/b;

.field public static f:Lcom/google/android/gms/common/a/b;

.field public static g:Lcom/google/android/gms/common/a/b;

.field public static h:Lcom/google/android/gms/common/a/b;

.field public static i:Lcom/google/android/gms/common/a/b;

.field public static j:Lcom/google/android/gms/common/a/b;

.field public static k:Lcom/google/android/gms/common/a/b;

.field public static l:Lcom/google/android/gms/common/a/b;

.field public static m:Lcom/google/android/gms/common/a/b;

.field public static n:Lcom/google/android/gms/common/a/b;

.field public static o:Lcom/google/android/gms/common/a/b;

.field public static p:Lcom/google/android/gms/common/a/b;

.field public static q:Lcom/google/android/gms/common/a/b;

.field public static r:Lcom/google/android/gms/common/a/b;

.field public static s:Lcom/google/android/gms/common/a/b;

.field public static t:Lcom/google/android/gms/common/a/b;

.field public static u:Lcom/google/android/gms/common/a/b;

.field public static v:Lcom/google/android/gms/common/a/b;

.field public static w:Lcom/google/android/gms/common/a/b;

.field public static x:Lcom/google/android/gms/common/a/b;

.field public static y:Lcom/google/android/gms/common/a/b;

.field public static z:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    const-string v0, "auth_servlet_path"

    const-string v1, "https://android.clients.google.com/auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->a:Lcom/google/android/gms/common/a/b;

    .line 22
    const-string v0, "setup_servlet_path"

    const-string v1, "https://android.clients.google.com/setup"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->b:Lcom/google/android/gms/common/a/b;

    .line 25
    const-string v0, "checkname_servlet_path"

    const-string v1, "https://android.clients.google.com/setup/checkname"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->c:Lcom/google/android/gms/common/a/b;

    .line 28
    const-string v0, "create_profile_path"

    const-string v1, "https://android.clients.google.com/setup/createprofile"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->d:Lcom/google/android/gms/common/a/b;

    .line 31
    const-string v0, "auth_reauth_settings_url"

    const-string v1, "https://android.clients.google.com/auth/reauthsettings"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->e:Lcom/google/android/gms/common/a/b;

    .line 34
    const-string v0, "auth_verify_pin_url"

    const-string v1, "https://android.clients.google.com/auth/verifypin"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->f:Lcom/google/android/gms/common/a/b;

    .line 37
    const-string v0, "auth_exchange_bootstrap_credentials_url"

    const-string v1, "https://android.clients.google.com/auth/exchange_bootstrap_credentials"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->g:Lcom/google/android/gms/common/a/b;

    .line 41
    const-string v0, "auth_get_bootstrap_challenges_url"

    const-string v1, "https://android.clients.google.com/auth/get_bootstrap_challenges"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->h:Lcom/google/android/gms/common/a/b;

    .line 45
    const-string v0, "oauth2_account_manager_client_id"

    const-string v1, "1070009224336-sdh77n7uot3oc99ais00jmuft6sk2fg9.apps.googleusercontent.com"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->i:Lcom/google/android/gms/common/a/b;

    .line 57
    const-string v0, "auth_channel_id_enabled_gms_core_version"

    const-wide/32 v2, 0x632ea0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->j:Lcom/google/android/gms/common/a/b;

    .line 61
    const-string v0, "auth_channel_id_enabled_sdk_version"

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->k:Lcom/google/android/gms/common/a/b;

    .line 64
    const-string v0, "enable_auth_generic_account_recovery"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->l:Lcom/google/android/gms/common/a/b;

    .line 67
    const-string v0, "enable_auth_generic_login_challange"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->m:Lcom/google/android/gms/common/a/b;

    .line 70
    const-string v0, "enable_auth_generic_two_step_verification"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->n:Lcom/google/android/gms/common/a/b;

    .line 73
    const-string v0, "enable_auth_generic_reauth"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->o:Lcom/google/android/gms/common/a/b;

    .line 76
    const-string v0, "enable_auth_generic_unknown"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->p:Lcom/google/android/gms/common/a/b;

    .line 79
    const-string v0, "auth_enable_clearcut"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->q:Lcom/google/android/gms/common/a/b;

    .line 82
    const-string v0, "auth_get_token_sample_percentage"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->r:Lcom/google/android/gms/common/a/b;

    .line 85
    const-string v0, "auth_grant_credential_screen_sample_percentage"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->s:Lcom/google/android/gms/common/a/b;

    .line 88
    const-string v0, "auth_auth_zen_sample_percentage"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->t:Lcom/google/android/gms/common/a/b;

    .line 91
    const-string v0, "auth_auth_server_sample_percentage"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->u:Lcom/google/android/gms/common/a/b;

    .line 94
    const-string v0, "auth_trust_agent_sample_percentage"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->v:Lcom/google/android/gms/common/a/b;

    .line 97
    const-string v0, "enable_droidguard"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->w:Lcom/google/android/gms/common/a/b;

    .line 100
    const-string v0, "auth_enable_droidguard_token_on_request_probability"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Double;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->x:Lcom/google/android/gms/common/a/b;

    .line 103
    const-string v0, "auth_is_proximity_features_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->y:Lcom/google/android/gms/common/a/b;

    .line 106
    const-string v0, "auth_supported_protocol_versions_for_proximity_unlock"

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->z:Lcom/google/android/gms/common/a/b;

    .line 109
    const-string v0, "auth_is_encryption_supported_for_protocol_v3"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->A:Lcom/google/android/gms/common/a/b;

    .line 113
    const-string v0, "auth_use_okhttp"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->B:Lcom/google/android/gms/common/a/b;

    .line 116
    const-string v0, "GmsCoreAccountSetupWorkflow"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->C:Lcom/google/android/gms/common/a/b;

    .line 119
    const-string v0, "auth_enable_minutemaid_resize_hack"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->D:Lcom/google/android/gms/common/a/b;

    .line 123
    const-string v0, "auth_minutemaid_debuggable"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->E:Lcom/google/android/gms/common/a/b;

    .line 126
    const-string v0, "minutemaid_url_override"

    const-string v1, "https://accounts.google.com/EmbeddedSetup?"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->F:Lcom/google/android/gms/common/a/b;

    .line 154
    const-string v0, "auth_valid_minutemaid_url_pattern"

    const-string v1, "^https:\\/\\/[\\d\\w\\.]+\\.google\\.com\\/[\\d\\w\\/]+[\\/\\?]?"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->G:Lcom/google/android/gms/common/a/b;

    .line 158
    const-string v0, "d2d_account_setup_enabled"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->H:Lcom/google/android/gms/common/a/b;

    .line 161
    const-string v0, "d2d_source_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->I:Lcom/google/android/gms/common/a/b;

    .line 164
    const-string v0, "auth_email_check_on_token_request_interval_sec"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->J:Lcom/google/android/gms/common/a/b;

    .line 167
    const-string v0, "auth_coffee_is_place_trustlet_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->K:Lcom/google/android/gms/common/a/b;

    .line 170
    const-string v0, "auth_coffee_is_bluetooth_trustlet_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    .line 173
    const-string v0, "auth_coffee_is_nfc_trustlet_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->M:Lcom/google/android/gms/common/a/b;

    .line 176
    const-string v0, "auth_coffee_is_face_unlock_trustlet_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->N:Lcom/google/android/gms/common/a/b;

    .line 179
    const-string v0, "auth_cron_period_secs"

    const-wide/32 v2, 0x127500

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->O:Lcom/google/android/gms/common/a/b;

    .line 182
    const-string v0, "auth_enable_factory_reset_protection"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->P:Lcom/google/android/gms/common/a/b;

    .line 186
    const-string v0, "authzen_enable"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->Q:Lcom/google/android/gms/common/a/b;

    .line 190
    const-string v0, "authzen_ui_test_enable"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->R:Lcom/google/android/gms/common/a/b;

    .line 194
    const-string v0, "authzen_cryptauth_server_url"

    const-string v1, "https://www.googleapis.com/"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->S:Lcom/google/android/gms/common/a/b;

    .line 198
    const-string v0, "authzen_cryptauth_scope"

    const-string v1, "https://www.googleapis.com/auth/cryptauth"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->T:Lcom/google/android/gms/common/a/b;

    .line 202
    const-string v0, "authzen_gcm_upstream_address"

    const-string v1, "authzen"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->U:Lcom/google/android/gms/common/a/b;

    .line 207
    const-string v0, "authzen_encryption_key_validity_period_months"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->V:Lcom/google/android/gms/common/a/b;

    .line 211
    const-string v0, "authzen_send_methods"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/b/a;->W:Lcom/google/android/gms/common/a/b;

    return-void
.end method
