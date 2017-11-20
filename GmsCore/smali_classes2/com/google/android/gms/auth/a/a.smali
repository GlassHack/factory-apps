.class public Lcom/google/android/gms/auth/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;ILcom/google/android/gms/auth/a/c;)Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/auth/a/c;->a(ILjava/lang/String;)Z

    move-result v4

    .line 61
    if-ne p2, p0, :cond_1

    move v0, v1

    .line 62
    :goto_0
    invoke-virtual {p3, p0}, Lcom/google/android/gms/auth/a/c;->c(I)Z

    move-result v5

    .line 63
    if-eqz v4, :cond_2

    if-nez v0, :cond_0

    if-eqz v5, :cond_2

    .line 64
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-direct {v0, p1, p2, v3, v3}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    move v0, v2

    .line 61
    goto :goto_0

    .line 69
    :cond_2
    if-nez v4, :cond_3

    .line 70
    const-string v0, "%s Fraud! Package %s isn\'t associated with uid %s!"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/auth/a/a;->a:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v2, "GLSActivity"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    throw v1

    .line 80
    :cond_3
    const-string v0, "%s Apps with uid %s cannot masquerade as package %s in uid %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/auth/a/a;->a:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v2, "GLSActivity"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    throw v1
.end method
