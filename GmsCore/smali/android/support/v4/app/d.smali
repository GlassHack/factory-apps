.class public final Landroid/support/v4/app/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/util/SparseArray;

.field public b:Landroid/support/v4/f/a;

.field public c:Ljava/util/ArrayList;

.field public d:Landroid/support/v4/app/af;

.field public e:Landroid/view/View;

.field final synthetic f:Landroid/support/v4/app/a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/a;)V
    .locals 1

    .prologue
    .line 1441
    iput-object p1, p0, Landroid/support/v4/app/d;->f:Landroid/support/v4/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/util/SparseArray;

    .line 1443
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/f/a;

    .line 1444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    .line 1446
    new-instance v0, Landroid/support/v4/app/af;

    invoke-direct {v0}, Landroid/support/v4/app/af;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/d;->d:Landroid/support/v4/app/af;

    return-void
.end method
