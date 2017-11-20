.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final a:Landroid/support/v4/f/q;

.field static final j:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:I

.field public C:Landroid/support/v4/app/p;

.field public D:Landroid/support/v4/app/j;

.field E:Landroid/support/v4/app/p;

.field public F:Landroid/support/v4/app/Fragment;

.field G:I

.field H:I

.field I:Ljava/lang/String;

.field J:Z

.field K:Z

.field public L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:I

.field R:Landroid/view/ViewGroup;

.field public S:Landroid/view/View;

.field T:Landroid/view/View;

.field U:Z

.field V:Z

.field W:Landroid/support/v4/app/an;

.field X:Z

.field Y:Z

.field Z:Ljava/lang/Object;

.field aa:Ljava/lang/Object;

.field ab:Ljava/lang/Object;

.field ac:Ljava/lang/Object;

.field ad:Ljava/lang/Object;

.field ae:Ljava/lang/Object;

.field af:Ljava/lang/Boolean;

.field ag:Ljava/lang/Boolean;

.field ah:Landroid/support/v4/app/cj;

.field ai:Landroid/support/v4/app/cj;

.field k:I

.field l:Landroid/view/View;

.field m:I

.field n:Landroid/os/Bundle;

.field o:Landroid/util/SparseArray;

.field p:I

.field q:Ljava/lang/String;

.field public r:Landroid/os/Bundle;

.field s:Landroid/support/v4/app/Fragment;

.field t:I

.field u:I

.field v:Z

.field public w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Landroid/support/v4/f/q;

    invoke-direct {v0}, Landroid/support/v4/f/q;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/f/q;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->k:I

    .line 196
    iput v2, p0, Landroid/support/v4/app/Fragment;->p:I

    .line 208
    iput v2, p0, Landroid/support/v4/app/Fragment;->t:I

    .line 279
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->O:Z

    .line 301
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->V:Z

    .line 307
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->Z:Ljava/lang/Object;

    .line 308
    sget-object v0, Landroid/support/v4/app/Fragment;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->aa:Ljava/lang/Object;

    .line 309
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->ab:Ljava/lang/Object;

    .line 310
    sget-object v0, Landroid/support/v4/app/Fragment;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->ac:Ljava/lang/Object;

    .line 311
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->ad:Ljava/lang/Object;

    .line 312
    sget-object v0, Landroid/support/v4/app/Fragment;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->ae:Ljava/lang/Object;

    .line 316
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/cj;

    .line 317
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->ai:Landroid/support/v4/app/cj;

    .line 388
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 414
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/f/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 415
    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 418
    sget-object v1, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/f/q;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/f/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 421
    if-eqz p2, :cond_1

    .line 422
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 423
    iput-object p2, v0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 425
    :cond_1
    return-object v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    new-instance v1, Landroid/support/v4/app/h;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 430
    :catch_1
    move-exception v0

    .line 431
    new-instance v1, Landroid/support/v4/app/h;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 434
    :catch_2
    move-exception v0

    .line 435
    new-instance v1, Landroid/support/v4/app/h;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 1741
    new-instance v0, Landroid/support/v4/app/p;

    invoke-direct {v0}, Landroid/support/v4/app/p;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    .line 1742
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    new-instance v2, Landroid/support/v4/app/g;

    invoke-direct {v2, p0}, Landroid/support/v4/app/g;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/j;Landroid/support/v4/app/n;Landroid/support/v4/app/Fragment;)V

    .line 1751
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 451
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/f/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 452
    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 455
    sget-object v1, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/f/q;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/f/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_0
    const-class v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 459
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q()V
    .locals 0

    .prologue
    .line 782
    return-void
.end method

.method public static s()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x0

    return-object v0
.end method

.method public static y()V
    .locals 0

    .prologue
    .line 1285
    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aa:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Z:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->aa:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ab:Ljava/lang/Object;

    return-object v0
.end method

.method public final C()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1533
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ac:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ab:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ac:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final D()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ad:Ljava/lang/Object;

    return-object v0
.end method

.method public final E()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1592
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ae:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ad:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ae:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ag:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final G()Z
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->af:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->af:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method final H()V
    .locals 3

    .prologue
    .line 1800
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j()V

    .line 1802
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->g()Z

    .line 1804
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1805
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 1806
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    .line 1807
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1810
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_2

    .line 1811
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->m()V

    .line 1813
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    if-eqz v0, :cond_3

    .line 1814
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->g()V

    .line 1816
    :cond_3
    return-void
.end method

.method final I()V
    .locals 3

    .prologue
    .line 1819
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j()V

    .line 1821
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->g()Z

    .line 1823
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1824
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->u()V

    .line 1825
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    .line 1826
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1829
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_2

    .line 1830
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->n()V

    .line 1831
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->g()Z

    .line 1833
    :cond_2
    return-void
.end method

.method final J()V
    .locals 1

    .prologue
    .line 1843
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1844
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1845
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->t()V

    .line 1847
    :cond_0
    return-void
.end method

.method final K()V
    .locals 3

    .prologue
    .line 1938
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->o()V

    .line 1941
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1942
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->v()V

    .line 1943
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    .line 1944
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1947
    :cond_1
    return-void
.end method

.method final L()V
    .locals 3

    .prologue
    .line 1950
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->p()V

    .line 1953
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1954
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 1955
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    .line 1956
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1959
    :cond_1
    return-void
.end method

.method final M()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1962
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->q()V

    .line 1965
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->X:Z

    if-eqz v0, :cond_2

    .line 1966
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->X:Z

    .line 1967
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->Y:Z

    if-nez v0, :cond_1

    .line 1968
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->Y:Z

    .line 1969
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->X:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/j;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    .line 1971
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    if-eqz v0, :cond_2

    .line 1972
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    iget-boolean v0, v0, Landroid/support/v4/app/j;->h:Z

    if-nez v0, :cond_3

    .line 1973
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->c()V

    .line 1979
    :cond_2
    :goto_0
    return-void

    .line 1975
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->d()V

    goto :goto_0
.end method

.method final N()V
    .locals 3

    .prologue
    .line 1982
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->r()V

    .line 1985
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1986
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 1987
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    .line 1988
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1991
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    if-eqz v0, :cond_2

    .line 1992
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->f()V

    .line 1994
    :cond_2
    return-void
.end method

.method final O()V
    .locals 3

    .prologue
    .line 1997
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->s()V

    .line 2000
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 2001
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->w()V

    .line 2002
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    .line 2003
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2006
    :cond_1
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->k()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 925
    return-void
.end method

.method final a(ILandroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 477
    iput p1, p0, Landroid/support/v4/app/Fragment;->p:I

    .line 478
    if-eqz p2, :cond_0

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/Fragment;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 991
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 983
    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 904
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 908
    return-void
.end method

.method final a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1836
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1837
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->a(Landroid/content/res/Configuration;)V

    .line 1840
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1016
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1053
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1654
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1655
    iget v0, p0, Landroid/support/v4/app/Fragment;->G:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1657
    iget v0, p0, Landroid/support/v4/app/Fragment;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1658
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1660
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->p:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1661
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1662
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->B:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1663
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1664
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1665
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->x:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1666
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->y:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1667
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1668
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1669
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->K:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1670
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1671
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1672
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1673
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1674
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->V:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1675
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1676
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1677
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/p;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1679
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    if-eqz v0, :cond_1

    .line 1680
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1683
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 1684
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1685
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1687
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1688
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1690
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1691
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1694
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 1695
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1698
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_6

    .line 1699
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1700
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1701
    iget v0, p0, Landroid/support/v4/app/Fragment;->u:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1703
    :cond_6
    iget v0, p0, Landroid/support/v4/app/Fragment;->Q:I

    if-eqz v0, :cond_7

    .line 1704
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->Q:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1706
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 1707
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1709
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1710
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1712
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1713
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1715
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->l:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1716
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->l:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1717
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1718
    iget v0, p0, Landroid/support/v4/app/Fragment;->m:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1720
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    if-eqz v0, :cond_c

    .line 1721
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1724
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_d

    .line 1725
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1728
    :cond_d
    return-void
.end method

.method final a(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 1873
    const/4 v0, 0x0

    .line 1874
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v1, :cond_1

    .line 1875
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v1, :cond_0

    .line 1876
    const/4 v0, 0x1

    .line 1877
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v1, :cond_1

    .line 1880
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/p;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1883
    :cond_1
    return v0
.end method

.method final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .prologue
    .line 1859
    const/4 v0, 0x0

    .line 1860
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v1, :cond_1

    .line 1861
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v1, :cond_0

    .line 1862
    const/4 v0, 0x1

    .line 1863
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v1, :cond_1

    .line 1866
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/p;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1869
    :cond_1
    return v0
.end method

.method final a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1887
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_1

    .line 1888
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    .line 1889
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_1

    .line 1894
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1895
    const/4 v0, 0x1

    .line 1899
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 934
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/o;

    .line 935
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v1}, Landroid/support/v4/app/p;->u()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 936
    return-object v0
.end method

.method final b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j()V

    .line 1781
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1241
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1242
    return-void
.end method

.method final b(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1917
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_1

    .line 1918
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    .line 1919
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_1

    .line 1922
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->b(Landroid/view/Menu;)V

    .line 1925
    :cond_1
    return-void
.end method

.method final b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1903
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_0

    .line 1904
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    const/4 v0, 0x1

    .line 1913
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1081
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1104
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1106
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->X:Z

    if-nez v0, :cond_1

    .line 1107
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->X:Z

    .line 1108
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->Y:Z

    if-nez v0, :cond_0

    .line 1109
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->Y:Z

    .line 1110
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->X:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/j;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    .line 1112
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->b()V

    .line 1116
    :cond_1
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1148
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1170
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 547
    iget v0, p0, Landroid/support/v4/app/Fragment;->p:I

    if-ltz v0, :cond_0

    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    .line 551
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 493
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1187
    return-void
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1754
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j()V

    .line 1757
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1758
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 1759
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    .line 1760
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1763
    :cond_1
    if-eqz p1, :cond_3

    .line 1764
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1766
    if-eqz v0, :cond_3

    .line 1767
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-nez v1, :cond_2

    .line 1768
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->a()V

    .line 1770
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/p;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1771
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->k()V

    .line 1774
    :cond_3
    return-void
.end method

.method final g()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    .line 468
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 470
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    .line 471
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_1
    return-void
.end method

.method final g(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1785
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j()V

    .line 1788
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1789
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 1790
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    .line 1791
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1794
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_2

    .line 1795
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->l()V

    .line 1797
    :cond_2
    return-void
.end method

.method final h(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1928
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 1929
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->i()Landroid/os/Parcelable;

    move-result-object v0

    .line 1931
    if-eqz v0, :cond_0

    .line 1932
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1935
    :cond_0
    return-void
.end method

.method final h()Z
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Landroid/support/v4/app/Fragment;->B:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 500
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    return-object v0
.end method

.method public final j()Landroid/support/v4/app/j;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    return-object v0
.end method

.method public final k()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final l()Landroid/support/v4/app/o;
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    if-nez v0, :cond_0

    .line 677
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->a()V

    .line 678
    iget v0, p0, Landroid/support/v4/app/Fragment;->k:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 679
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->n()V

    .line 688
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    return-object v0

    .line 680
    :cond_1
    iget v0, p0, Landroid/support/v4/app/Fragment;->k:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 681
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->m()V

    goto :goto_0

    .line 682
    :cond_2
    iget v0, p0, Landroid/support/v4/app/Fragment;->k:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 683
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->l()V

    goto :goto_0

    .line 684
    :cond_3
    iget v0, p0, Landroid/support/v4/app/Fragment;->k:I

    if-lez v0, :cond_0

    .line 685
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->k()V

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->K:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 749
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1152
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/j;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1338
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1174
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    return v0
.end method

.method public final r()Landroid/support/v4/app/al;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 877
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    .line 885
    :goto_0
    return-object v0

    .line 880
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    if-nez v0, :cond_1

    .line 881
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_1
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->Y:Z

    .line 884
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->X:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/j;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    .line 885
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method public final t()Landroid/view/View;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    invoke-static {p0, v0}, Landroid/support/v4/f/e;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 507
    iget v1, p0, Landroid/support/v4/app/Fragment;->p:I

    if-ltz v1, :cond_0

    .line 508
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget v1, p0, Landroid/support/v4/app/Fragment;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    :cond_0
    iget v1, p0, Landroid/support/v4/app/Fragment;->G:I

    if-eqz v1, :cond_1

    .line 512
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget v1, p0, Landroid/support/v4/app/Fragment;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 516
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1126
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1161
    return-void
.end method

.method public w()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1194
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->P:Z

    .line 1197
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->Y:Z

    if-nez v0, :cond_0

    .line 1198
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->Y:Z

    .line 1199
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->X:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/j;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    .line 1201
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->h()V

    .line 1204
    :cond_1
    return-void
.end method

.method final x()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1213
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->p:I

    .line 1214
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    .line 1215
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->v:Z

    .line 1216
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->w:Z

    .line 1217
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->x:Z

    .line 1218
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->y:Z

    .line 1219
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->z:Z

    .line 1220
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->A:Z

    .line 1221
    iput v1, p0, Landroid/support/v4/app/Fragment;->B:I

    .line 1222
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/p;

    .line 1223
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    .line 1224
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    .line 1225
    iput v1, p0, Landroid/support/v4/app/Fragment;->G:I

    .line 1226
    iput v1, p0, Landroid/support/v4/app/Fragment;->H:I

    .line 1227
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    .line 1228
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->J:Z

    .line 1229
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->K:Z

    .line 1230
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->M:Z

    .line 1231
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    .line 1232
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->X:Z

    .line 1233
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->Y:Z

    .line 1234
    return-void
.end method

.method public final z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Z:Ljava/lang/Object;

    return-object v0
.end method
