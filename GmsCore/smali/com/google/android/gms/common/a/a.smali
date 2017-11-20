.class public final Lcom/google/android/gms/common/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/common/a/b;

.field public static b:Lcom/google/android/gms/common/a/b;

.field public static c:Lcom/google/android/gms/common/a/b;

.field public static d:Lcom/google/android/gms/common/a/b;

.field public static e:Lcom/google/android/gms/common/a/b;

.field public static f:Lcom/google/android/gms/common/a/b;

.field public static g:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 15
    const-string v0, "gms:common:allow_pii_logging"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/a;->a:Lcom/google/android/gms/common/a/b;

    .line 18
    const-string v0, "enable_dumpsys"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/a;->b:Lcom/google/android/gms/common/a/b;

    .line 21
    const-string v0, "gms:common:system_health_log_delay_after_install_millis"

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/a;->c:Lcom/google/android/gms/common/a/b;

    .line 28
    const-string v0, "gms:common:ignored_packages_for_logging"

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/a;->d:Lcom/google/android/gms/common/a/b;

    .line 32
    const-string v0, "gms:common:show_people_settings"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/a;->e:Lcom/google/android/gms/common/a/b;

    .line 35
    const-string v0, "gms:common:show_download_settings"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/a;->f:Lcom/google/android/gms/common/a/b;

    .line 38
    const-string v0, "gms:common:enable_auth_proxy_version"

    const-wide/32 v2, 0x4dd1e0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/a;->g:Lcom/google/android/gms/common/a/b;

    return-void
.end method
