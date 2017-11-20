.class public final Lcom/google/android/gms/playlog/a/e;
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    const-string v0, "gms:playlog:uploader:debug"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/e;->a:Lcom/google/android/gms/common/a/b;

    .line 50
    const-string v0, "gms:playlog:uploader:debug_ignore_response"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/e;->b:Lcom/google/android/gms/common/a/b;

    .line 52
    const-string v0, "gms:playlog:uploader:server_url"

    const-string v1, "https://play.googleapis.com/log"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/e;->c:Lcom/google/android/gms/common/a/b;

    .line 54
    const-string v0, "gms:playlog:uploader:auth_token_service"

    const-string v1, "androidmarket"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/e;->d:Lcom/google/android/gms/common/a/b;

    .line 56
    const-string v0, "gms:playlog:uploader:upload_interval_millis"

    const-wide/32 v2, 0x36ee80

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/e;->e:Lcom/google/android/gms/common/a/b;

    .line 59
    const-string v0, "gms:playlog:uploader:max_redirects"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/e;->f:Lcom/google/android/gms/common/a/b;

    .line 62
    const-string v0, "gms:playlog:uploader:max_log_events_size_bytes"

    const-wide/32 v2, 0x10000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/e;->g:Lcom/google/android/gms/common/a/b;

    return-void
.end method
