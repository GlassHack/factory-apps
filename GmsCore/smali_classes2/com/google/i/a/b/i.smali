.class public final Lcom/google/i/a/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Lcom/google/i/a/b/i;


# instance fields
.field public a:Lcom/google/i/a/b/a;

.field public b:Lcom/google/i/a/b/a;

.field public c:Lcom/google/i/a/b/a;

.field public d:Lcom/google/i/a/b/a;

.field public e:Lcom/google/i/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/i/a/b/i;

    invoke-direct {v0}, Lcom/google/i/a/b/i;-><init>()V

    sput-object v0, Lcom/google/i/a/b/i;->f:Lcom/google/i/a/b/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/i/a/b/h;[B)Lcom/google/i/a/b/i;
    .locals 4

    .prologue
    .line 35
    sget-object v0, Lcom/google/i/a/b/i;->f:Lcom/google/i/a/b/i;

    new-instance v1, Lcom/google/i/a/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aE:Lcom/google/g/a/b/b/c;

    const-string v3, "vi"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/i/a/b/a;-><init>(Lcom/google/i/a/b/h;Lcom/google/g/a/b/b/c;Ljava/lang/String;[B)V

    iput-object v1, v0, Lcom/google/i/a/b/i;->a:Lcom/google/i/a/b/a;

    .line 37
    sget-object v0, Lcom/google/i/a/b/i;->f:Lcom/google/i/a/b/i;

    new-instance v1, Lcom/google/i/a/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aF:Lcom/google/g/a/b/b/c;

    const-string v3, "mkpmk"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/i/a/b/a;-><init>(Lcom/google/i/a/b/h;Lcom/google/g/a/b/b/c;Ljava/lang/String;[B)V

    iput-object v1, v0, Lcom/google/i/a/b/i;->b:Lcom/google/i/a/b/a;

    .line 40
    sget-object v0, Lcom/google/i/a/b/i;->f:Lcom/google/i/a/b/i;

    new-instance v1, Lcom/google/i/a/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aG:Lcom/google/g/a/b/b/c;

    const-string v3, "pmktk"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/i/a/b/a;-><init>(Lcom/google/i/a/b/h;Lcom/google/g/a/b/b/c;Ljava/lang/String;[B)V

    iput-object v1, v0, Lcom/google/i/a/b/i;->c:Lcom/google/i/a/b/a;

    .line 43
    sget-object v0, Lcom/google/i/a/b/i;->f:Lcom/google/i/a/b/i;

    new-instance v1, Lcom/google/i/a/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aH:Lcom/google/g/a/b/b/c;

    const-string v3, "ckpk"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/i/a/b/a;-><init>(Lcom/google/i/a/b/h;Lcom/google/g/a/b/b/c;Ljava/lang/String;[B)V

    iput-object v1, v0, Lcom/google/i/a/b/i;->d:Lcom/google/i/a/b/a;

    .line 46
    sget-object v0, Lcom/google/i/a/b/i;->f:Lcom/google/i/a/b/i;

    new-instance v1, Lcom/google/i/a/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aI:Lcom/google/g/a/b/b/c;

    const-string v3, "wp"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/i/a/b/a;-><init>(Lcom/google/i/a/b/h;Lcom/google/g/a/b/b/c;Ljava/lang/String;[B)V

    iput-object v1, v0, Lcom/google/i/a/b/i;->e:Lcom/google/i/a/b/a;

    .line 49
    sget-object v0, Lcom/google/i/a/b/i;->f:Lcom/google/i/a/b/i;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/i/a/b/i;->a:Lcom/google/i/a/b/a;

    invoke-virtual {v0}, Lcom/google/i/a/b/a;->a()V

    .line 58
    iget-object v0, p0, Lcom/google/i/a/b/i;->b:Lcom/google/i/a/b/a;

    invoke-virtual {v0}, Lcom/google/i/a/b/a;->a()V

    .line 59
    iget-object v0, p0, Lcom/google/i/a/b/i;->c:Lcom/google/i/a/b/a;

    invoke-virtual {v0}, Lcom/google/i/a/b/a;->a()V

    .line 60
    iget-object v0, p0, Lcom/google/i/a/b/i;->d:Lcom/google/i/a/b/a;

    invoke-virtual {v0}, Lcom/google/i/a/b/a;->a()V

    .line 61
    iget-object v0, p0, Lcom/google/i/a/b/i;->e:Lcom/google/i/a/b/a;

    invoke-virtual {v0}, Lcom/google/i/a/b/a;->a()V

    .line 62
    return-void
.end method
