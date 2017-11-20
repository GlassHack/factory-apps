.class public final Lcom/google/android/gms/usagereporting/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;

.field public static final b:Lcom/google/android/gms/usagereporting/d;

.field private static final c:Lcom/google/android/gms/common/api/d;

.field private static final d:Lcom/google/android/gms/common/api/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/gms/common/api/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/usagereporting/a;->c:Lcom/google/android/gms/common/api/d;

    .line 33
    new-instance v0, Lcom/google/android/gms/usagereporting/b;

    invoke-direct {v0}, Lcom/google/android/gms/usagereporting/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/usagereporting/a;->d:Lcom/google/android/gms/common/api/c;

    .line 59
    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/usagereporting/a;->d:Lcom/google/android/gms/common/api/c;

    sget-object v2, Lcom/google/android/gms/usagereporting/a;->c:Lcom/google/android/gms/common/api/d;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/ac;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/d;[Lcom/google/android/gms/common/api/ac;)V

    sput-object v0, Lcom/google/android/gms/usagereporting/a;->a:Lcom/google/android/gms/common/api/a;

    .line 84
    new-instance v0, Lcom/google/android/gms/usagereporting/a/j;

    invoke-direct {v0}, Lcom/google/android/gms/usagereporting/a/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/usagereporting/a;->b:Lcom/google/android/gms/usagereporting/d;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/common/api/d;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/usagereporting/a;->c:Lcom/google/android/gms/common/api/d;

    return-object v0
.end method
