.class abstract Lcom/google/c/b/ev;
.super Ljava/lang/Number;


# static fields
.field static final a:Lcom/google/c/b/fa;

.field static final b:I

.field private static final e:Lsun/misc/Unsafe;

.field private static final f:J

.field private static final g:J


# instance fields
.field volatile transient c:[Lcom/google/c/b/ex;

.field volatile transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/c/b/fa;

    invoke-direct {v0}, Lcom/google/c/b/fa;-><init>()V

    sput-object v0, Lcom/google/c/b/ev;->a:Lcom/google/c/b/fa;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/c/b/ev;->b:I

    :try_start_0
    invoke-static {}, Lcom/google/c/b/ev;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/ev;->e:Lsun/misc/Unsafe;

    const-class v0, Lcom/google/c/b/ev;

    sget-object v1, Lcom/google/c/b/ev;->e:Lsun/misc/Unsafe;

    const-string v2, "base"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/c/b/ev;->f:J

    sget-object v1, Lcom/google/c/b/ev;->e:Lsun/misc/Unsafe;

    const-string v2, "busy"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/c/b/ev;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method private static a()Lsun/misc/Unsafe;
    .locals 3

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/c/b/ew;

    invoke-direct {v0}, Lcom/google/c/b/ew;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method abstract a(JJ)J
.end method

.method final b()Z
    .locals 6

    sget-object v0, Lcom/google/c/b/ev;->e:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/c/b/ev;->g:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method final b(J)Z
    .locals 9

    sget-object v0, Lcom/google/c/b/ev;->e:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/c/b/ev;->f:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v6, p1

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
