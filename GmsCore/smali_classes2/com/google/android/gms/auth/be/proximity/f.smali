.class public Lcom/google/android/gms/auth/be/proximity/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/auth/be/proximity/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/android/gms/auth/be/proximity/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/f;->b:Lcom/google/android/gms/auth/be/proximity/b/c;

    .line 22
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/gms/auth/b/a;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/f;->b:Lcom/google/android/gms/auth/be/proximity/b/c;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/be/proximity/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lcom/google/android/gms/auth/be/proximity/b/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/f;->a:Ljava/lang/String;

    const-string v3, "Error when trying to get all permits from database."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
