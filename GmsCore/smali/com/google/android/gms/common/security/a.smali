.class public final Lcom/google/android/gms/common/security/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/common/a/b;

.field public static b:Lcom/google/android/gms/common/a/b;

.field public static c:Lcom/google/android/gms/common/a/b;

.field public static d:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const-string v0, "gms:security:enable_conscrypt_in_gms_application"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/security/a;->a:Lcom/google/android/gms/common/a/b;

    .line 15
    const-string v0, "gms:security:enable_conscrypt_in_auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/security/a;->b:Lcom/google/android/gms/common/a/b;

    .line 18
    const-string v0, "gms:security:enable_conscrypt_in_gcm"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/security/a;->c:Lcom/google/android/gms/common/a/b;

    .line 21
    const-string v0, "gms:security:enable_conscrypt_in_checkin"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/security/a;->d:Lcom/google/android/gms/common/a/b;

    return-void
.end method
