.class public final Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/b;->a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/b;->a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/b;

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;-><init>(Landroid/content/Context;B)V

    return-object v0
.end method
