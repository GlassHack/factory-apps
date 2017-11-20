.class public final Lcom/google/android/gms/people/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;

.field public static b:Ljava/lang/Iterable;

.field public static final c:Landroid/os/Handler;

.field public static final d:[Ljava/lang/String;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/security/SecureRandom;

.field private static final h:Ljava/lang/ThreadLocal;

.field private static final i:Ljava/lang/ThreadLocal;

.field private static final j:Ljava/lang/ThreadLocal;

.field private static final k:Ljava/lang/ThreadLocal;

.field private static final l:Ljava/lang/ThreadLocal;

.field private static final m:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/gms/people/internal/u;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->a:Ljava/util/Map;

    .line 68
    new-instance v0, Lcom/google/android/gms/people/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->b:Ljava/lang/Iterable;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->c:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/people/internal/t;->d:[Ljava/lang/String;

    .line 87
    const-string v0, "\\,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/internal/t;->e:Ljava/util/regex/Pattern;

    .line 90
    const-string v0, "[\u2028\u2029 \u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\t\u000b\u000c\u001c\u001d\u001e\u001f\n\r]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/internal/t;->f:Ljava/util/regex/Pattern;

    .line 117
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->g:Ljava/security/SecureRandom;

    .line 499
    new-instance v0, Lcom/google/android/gms/people/internal/v;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->h:Ljava/lang/ThreadLocal;

    .line 513
    new-instance v0, Lcom/google/android/gms/people/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->i:Ljava/lang/ThreadLocal;

    .line 530
    new-instance v0, Lcom/google/android/gms/people/internal/x;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->j:Ljava/lang/ThreadLocal;

    .line 548
    new-instance v0, Lcom/google/android/gms/people/internal/y;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->k:Ljava/lang/ThreadLocal;

    .line 567
    new-instance v0, Lcom/google/android/gms/people/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->l:Ljava/lang/ThreadLocal;

    .line 588
    new-instance v0, Lcom/google/android/gms/people/internal/aa;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/t;->m:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    if-eqz p0, :cond_0

    const-string v0, "g:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "g:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    if-eqz p0, :cond_0

    const-string v0, "e:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 398
    if-eqz p0, :cond_0

    const-string v0, "e:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
