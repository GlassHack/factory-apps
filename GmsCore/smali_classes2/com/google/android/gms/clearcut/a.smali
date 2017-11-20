.class public final Lcom/google/android/gms/clearcut/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/d;

.field public static final b:Lcom/google/android/gms/common/api/c;

.field public static final c:Lcom/google/android/gms/common/api/a;

.field public static final d:Lcom/google/android/gms/clearcut/e;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Lcom/google/android/gms/clearcut/e;

.field private final k:Lcom/google/android/gms/common/util/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/common/api/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->a:Lcom/google/android/gms/common/api/d;

    .line 49
    new-instance v0, Lcom/google/android/gms/clearcut/b;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->b:Lcom/google/android/gms/common/api/c;

    .line 71
    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/clearcut/a;->b:Lcom/google/android/gms/common/api/c;

    sget-object v2, Lcom/google/android/gms/clearcut/a;->a:Lcom/google/android/gms/common/api/d;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/ac;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/d;[Lcom/google/android/gms/common/api/ac;)V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->c:Lcom/google/android/gms/common/api/a;

    .line 73
    new-instance v0, Lcom/google/android/gms/clearcut/a/a;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/a/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->d:Lcom/google/android/gms/clearcut/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 104
    const/16 v2, 0xa

    sget-object v5, Lcom/google/android/gms/clearcut/a;->d:Lcom/google/android/gms/clearcut/e;

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/clearcut/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/clearcut/e;Lcom/google/android/gms/common/util/i;)V

    .line 107
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/clearcut/e;Lcom/google/android/gms/common/util/i;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p5, p0, Lcom/google/android/gms/clearcut/a;->j:Lcom/google/android/gms/clearcut/e;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/a;->e:Ljava/lang/String;

    .line 119
    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/a;->f:I

    .line 121
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/clearcut/a;->g:I

    .line 122
    iput-object v1, p0, Lcom/google/android/gms/clearcut/a;->h:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/google/android/gms/clearcut/a;->i:Ljava/lang/String;

    .line 124
    iput-object p6, p0, Lcom/google/android/gms/clearcut/a;->k:Lcom/google/android/gms/common/util/i;

    .line 125
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 128
    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return v0

    .line 133
    :catch_0
    move-exception v1

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/clearcut/a;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/gms/clearcut/a;->g:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/util/i;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->k:Lcom/google/android/gms/common/util/i;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/google/android/gms/clearcut/a;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/gms/clearcut/a;->f:I

    return v0
.end method

.method public static synthetic g(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/e;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/clearcut/a;->j:Lcom/google/android/gms/clearcut/e;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/nano/j;)Lcom/google/android/gms/clearcut/c;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/gms/clearcut/c;

    invoke-static {p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/clearcut/c;-><init>(Lcom/google/android/gms/clearcut/a;[BC)V

    return-object v0
.end method
