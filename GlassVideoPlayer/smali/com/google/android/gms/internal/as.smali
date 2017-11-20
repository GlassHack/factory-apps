.class public final Lcom/google/android/gms/internal/as;
.super Ljava/lang/Object;


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

    new-instance v0, Lcom/google/android/gms/internal/fe$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fe$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/as;->a:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/aq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/as;->b:Ljava/lang/Iterable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/as;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/as;->d:[Ljava/lang/String;

    const-string v0, "\\,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/as;->e:Ljava/util/regex/Pattern;

    const-string v0, "[\u2028\u2029 \u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\t\u000b\u000c\u001c\u001d\u001e\u001f\n\r]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/as;->f:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/as;->g:Ljava/security/SecureRandom;

    new-instance v0, Lcom/google/android/gms/internal/at;

    invoke-direct {v0}, Lcom/google/android/gms/internal/at;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/as;->h:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/au;

    invoke-direct {v0}, Lcom/google/android/gms/internal/au;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/as;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/av;

    invoke-direct {v0}, Lcom/google/android/gms/internal/av;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/as;->j:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/aw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/as;->k:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/ax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ax;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/as;->l:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/ay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ay;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/as;->m:Ljava/lang/ThreadLocal;

    return-void
.end method
