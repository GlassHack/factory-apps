.class public final Lcom/google/android/gms/wearable/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/common/a/b;

.field public static b:Lcom/google/android/gms/common/a/b;

.field public static final c:Lcom/google/android/gms/common/a/b;

.field public static final d:Lcom/google/android/gms/common/a/b;

.field public static final e:Lcom/google/android/gms/common/a/b;

.field public static final f:Lcom/google/android/gms/common/a/b;

.field public static final g:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 13
    const-string v0, "gms:wearable:service:logging"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/a/b;->a:Lcom/google/android/gms/common/a/b;

    .line 23
    const-string v0, "gms:wearable:service:override_wearable_app_user_debug_signature"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/a/b;->b:Lcom/google/android/gms/common/a/b;

    .line 32
    const-string v0, "gms:wearable:service:data_item_size_limit_bytes"

    const v1, 0x19000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/a/b;->c:Lcom/google/android/gms/common/a/b;

    .line 40
    const-string v0, "gms:wearable:service:bt_retry_steps"

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/a/b;->d:Lcom/google/android/gms/common/a/b;

    .line 46
    const-string v0, "gms:wearable:service:dataitem_gc_interval"

    const-wide/32 v2, 0x2932e00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/a/b;->e:Lcom/google/android/gms/common/a/b;

    .line 57
    const-string v0, "gms:wearable:service:max_write_stuck_time"

    const-wide/32 v2, 0x493e0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/a/b;->f:Lcom/google/android/gms/common/a/b;

    .line 67
    const-string v0, "gms:wearable:service:max_write_stuck_time_v2"

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/a/b;->g:Lcom/google/android/gms/common/a/b;

    return-void
.end method
