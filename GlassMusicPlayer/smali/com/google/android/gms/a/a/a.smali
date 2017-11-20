.class public final Lcom/google/android/gms/a/a/a;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/a/a/a;

    invoke-direct {v0}, Lcom/google/android/gms/a/a/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/a/a/a;->a:Lcom/google/android/gms/a/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/a/a/a;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/gms/a/a/a;->a:Lcom/google/android/gms/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/auth/firstparty/dataservice/a;
    .locals 1

    .prologue
    .line 33
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/google/android/gms/a/a/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/a/a/b;-><init>(Lcom/google/android/gms/a/a/a;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/a/a/a;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/a;

    return-object v0
.end method
