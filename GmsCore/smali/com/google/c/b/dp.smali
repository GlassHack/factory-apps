.class final enum Lcom/google/c/b/dp;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/c/b/dq;


# static fields
.field public static final enum a:Lcom/google/c/b/dp;

.field private static final synthetic b:[Lcom/google/c/b/dp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/c/b/dp;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/c/b/dp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/dp;->a:Lcom/google/c/b/dp;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/c/b/dp;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/b/dp;->a:Lcom/google/c/b/dp;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/b/dp;->b:[Lcom/google/c/b/dp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/b/dp;
    .locals 1

    const-class v0, Lcom/google/c/b/dp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dp;

    return-object v0
.end method

.method public static values()[Lcom/google/c/b/dp;
    .locals 1

    sget-object v0, Lcom/google/c/b/dp;->b:[Lcom/google/c/b/dp;

    invoke-virtual {v0}, [Lcom/google/c/b/dp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/dp;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/c/b/dq;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/c/b/ee;)V
    .locals 0

    return-void
.end method

.method public final b()Lcom/google/c/b/dq;
    .locals 0

    return-object p0
.end method

.method public final b(J)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/c/b/dq;)V
    .locals 0

    return-void
.end method

.method public final c()Lcom/google/c/b/dq;
    .locals 0

    return-object p0
.end method

.method public final c(Lcom/google/c/b/dq;)V
    .locals 0

    return-void
.end method

.method public final d()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d(Lcom/google/c/b/dq;)V
    .locals 0

    return-void
.end method

.method public final e()Lcom/google/c/b/dq;
    .locals 0

    return-object p0
.end method

.method public final f()Lcom/google/c/b/dq;
    .locals 0

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lcom/google/c/b/ee;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lcom/google/c/b/dq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
