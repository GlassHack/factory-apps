.class public final Landroid/support/v4/app/ax;
.super Landroid/support/v4/app/bs;
.source "SourceFile"


# static fields
.field public static final d:Landroid/support/v4/app/bt;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;

.field private final e:Landroid/os/Bundle;

.field private final f:[Landroid/support/v4/app/by;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1951
    new-instance v0, Landroid/support/v4/app/ay;

    invoke-direct {v0}, Landroid/support/v4/app/ay;-><init>()V

    sput-object v0, Landroid/support/v4/app/ax;->d:Landroid/support/v4/app/bt;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 1698
    const v0, 0x7f02006c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/support/v4/app/ax;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 1699
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1702
    invoke-direct {p0}, Landroid/support/v4/app/bs;-><init>()V

    .line 1703
    iput p1, p0, Landroid/support/v4/app/ax;->a:I

    .line 1704
    invoke-static {p2}, Landroid/support/v4/app/bb;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ax;->b:Ljava/lang/CharSequence;

    .line 1705
    iput-object p3, p0, Landroid/support/v4/app/ax;->c:Landroid/app/PendingIntent;

    .line 1706
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/ax;->e:Landroid/os/Bundle;

    .line 1707
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/ax;->f:[Landroid/support/v4/app/by;

    .line 1708
    return-void

    .line 1706
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 1712
    iget v0, p0, Landroid/support/v4/app/ax;->a:I

    return v0
.end method

.method protected final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Landroid/support/v4/app/ax;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected final c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Landroid/support/v4/app/ax;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Landroid/support/v4/app/ax;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final bridge synthetic e()[Landroid/support/v4/app/cg;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/support/v4/app/ax;->f:[Landroid/support/v4/app/by;

    return-object v0
.end method
