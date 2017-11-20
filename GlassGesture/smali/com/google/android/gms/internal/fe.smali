.class public Lcom/google/android/gms/internal/fe;
.super Ljava/lang/Object;


# static fields
.field public static final NA:Ljava/util/regex/Pattern;

.field public static final NB:Ljava/security/SecureRandom;

.field private static final NC:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final ND:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NG:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NH:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Nv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static Nw:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<*>;"
        }
    .end annotation
.end field

.field public static final Nx:Landroid/os/Handler;

.field public static final Ny:[Ljava/lang/String;

.field public static final Nz:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/fe$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fe$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fe;->Nv:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/et;

    invoke-direct {v0}, Lcom/google/android/gms/internal/et;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fe;->Nw:Ljava/lang/Iterable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/fe;->Nx:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/fe;->Ny:[Ljava/lang/String;

    const-string v0, "\\,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fe;->Nz:Ljava/util/regex/Pattern;

    const-string v0, "[\u2028\u2029 \u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\t\u000b\u000c\u001c\u001d\u001e\u001f\n\r]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fe;->NA:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fe;->NB:Ljava/security/SecureRandom;

    new-instance v0, Lcom/google/android/gms/internal/fe$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fe$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fe;->NC:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/fe$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fe$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fe;->ND:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/fe$4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fe$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fe;->NE:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/fe$5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fe$5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fe;->NF:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/fe$6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fe$6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fe;->NG:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/fe$7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fe$7;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fe;->NH:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static aA(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/fe;->Ny:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/fe;->Nz:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static aB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "e:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "e:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static aD(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/l;->X(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aE(Ljava/lang/String;)Z
    .locals 1

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

.method public static fS()Ljava/lang/StringBuilder;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/fe;->NC:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "g:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "e:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Expecting qualified-id, not gaia-id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/fe;->NE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object v0
.end method
