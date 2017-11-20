.class public final Lcom/google/android/gms/playlog/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/common/a/b;

.field public static b:Lcom/google/android/gms/common/a/b;

.field public static c:Lcom/google/android/gms/common/a/b;

.field public static d:Lcom/google/android/gms/common/a/b;

.field public static e:Lcom/google/android/gms/common/a/b;

.field public static f:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x200000

    const/4 v4, 0x1

    .line 25
    const-string v0, "gms:playlog:logstore:debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/b;->a:Lcom/google/android/gms/common/a/b;

    .line 27
    const-string v0, "gms:playlog:logstore:max_log_directory_storage_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/b;->b:Lcom/google/android/gms/common/a/b;

    .line 31
    const-string v0, "gms:playlog:logstore:target_log_file_bytes"

    const-wide/32 v2, 0xc800

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/b;->c:Lcom/google/android/gms/common/a/b;

    .line 35
    const-string v0, "gms:playlog:logstore:max_storage_size_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/b;->d:Lcom/google/android/gms/common/a/b;

    .line 38
    const-string v0, "gms:playlog:logstore:use_new_log_store_read_version_6"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/b;->e:Lcom/google/android/gms/common/a/b;

    .line 40
    const-string v0, "gms:playlog:logstore:use_new_log_store_write_version_6"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/b;->f:Lcom/google/android/gms/common/a/b;

    return-void
.end method
