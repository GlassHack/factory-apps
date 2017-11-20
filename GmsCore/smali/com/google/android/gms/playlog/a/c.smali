.class public final Lcom/google/android/gms/playlog/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/common/a/b;

.field public static b:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    const-string v0, "gms:playlog:service:debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/c;->a:Lcom/google/android/gms/common/a/b;

    .line 20
    const-string v0, "gms:playlog:service:monitoring_interval"

    const-wide/32 v2, 0x5265c00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/a/c;->b:Lcom/google/android/gms/common/a/b;

    return-void
.end method
