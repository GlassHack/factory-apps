.class public abstract Lcom/google/maps/api/android/lib6/gmm6/l/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final F:Ljava/util/Map;

.field private static final J:Lcom/google/maps/api/android/lib6/gmm6/l/w;

.field private static final K:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

.field private static final L:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

.field private static final M:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

.field private static final N:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

.field private static final O:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field private static final P:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field private static final Q:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field public static final a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final b:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final d:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final e:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final f:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final g:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final j:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final k:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final l:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final m:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final o:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final p:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final r:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final s:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final t:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final u:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final v:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final w:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field public static final x:Lcom/google/maps/api/android/lib6/gmm6/l/av;


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:Ljava/lang/String;

.field final D:Z

.field final E:Z

.field private final G:I

.field private final H:Z

.field private final I:Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0xc

    const/4 v1, -0x1

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->F:Ljava/util/Map;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ax;

    const/16 v3, 0xa

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ax;-><init>(IB)V

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;->i:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->g:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ax;

    const/16 v3, 0x16

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ax;-><init>(IB)V

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;->i:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->g:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->b:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ax;

    const/16 v3, 0x14

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ax;-><init>(IB)V

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;->i:Z

    const-string v3, "_tran_base"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->g:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ba;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ba;-><init>(IB)V

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->f:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->d:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ba;

    invoke-direct {v0, v10, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ba;-><init>(IB)V

    const-string v3, "_ter"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->f:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->e:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_traf"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->f:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/16 v3, 0x17

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_traf"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->g:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bf;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bf;-><init>(B)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bf;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bh;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bh;-><init>(B)V

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ax;

    const/16 v3, 0x12

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ax;-><init>(IB)V

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ax;->a:Z

    const-string v3, "_vec_bic"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->j:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ba;

    const/4 v3, 0x7

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ba;-><init>(IB)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ba;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ay;

    move-result-object v0

    const-string v3, "_ter_bic"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->k:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ba;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ba;-><init>(IB)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ba;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ay;

    move-result-object v0

    const-string v3, "_hy_bic"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->l:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/16 v3, 0xd

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_tran"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->m:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/16 v3, 0xe

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    const-string v3, "_inaka"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bd;

    const/16 v3, 0xf

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bd;-><init>(IB)V

    const-string v3, "_labl"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->g:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->o:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bd;

    const/16 v3, 0x15

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bd;-><init>(IB)V

    const-string v3, "_tran_labl"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->g:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->p:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/16 v3, 0x10

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_psm"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->e:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/16 v3, 0x11

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_related"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->e:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->r:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/16 v3, 0x18

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_high"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->e:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->s:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/16 v3, 0x19

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_api"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->t:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    invoke-direct {v0, v2, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_star"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->e:Z

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->u:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/16 v3, 0x1a

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_spotlight"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->v:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bk;

    const/16 v3, 0x1b

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bk;-><init>(IB)V

    const-string v3, "_maps_engine_vector"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->w:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ba;

    const/16 v3, 0x1c

    invoke-direct {v0, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ba;-><init>(IB)V

    const-string v3, "_maps_engine_image"

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->x:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/w;

    const/4 v3, 0x0

    new-array v4, v2, [I

    invoke-direct {v0, v2, v3, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/w;-><init>(IF[II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->J:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    const/high16 v3, -0x1000000

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->J:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-direct {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;-><init>(ILcom/google/maps/api/android/lib6/gmm6/l/w;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->K:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    const v3, -0xffff01

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->J:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-direct {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;-><init>(ILcom/google/maps/api/android/lib6/gmm6/l/w;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->L:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    const/high16 v3, -0x10000

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->J:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-direct {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;-><init>(ILcom/google/maps/api/android/lib6/gmm6/l/w;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->M:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    const/16 v3, 0xa

    const v4, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;-><init>(IIIFFI)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->N:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/l/av;->N:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/l/av;->K:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    move v2, v10

    move-object v3, v9

    move-object v4, v9

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/x;-><init>(II[I[Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ad;Lcom/google/maps/api/android/lib6/gmm6/l/ac;Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ct;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->O:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/l/av;->N:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/l/av;->M:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    move v2, v10

    move-object v3, v9

    move-object v4, v9

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/x;-><init>(II[I[Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ad;Lcom/google/maps/api/android/lib6/gmm6/l/ac;Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ct;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->P:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/l/av;->N:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/l/av;->L:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    move v2, v10

    move-object v3, v9

    move-object v4, v9

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/x;-><init>(II[I[Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ad;Lcom/google/maps/api/android/lib6/gmm6/l/ac;Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ct;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->Q:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ay;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->b:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->y:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->c:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->z:I

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->C:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->e:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->A:Z

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->f:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->D:Z

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->g:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->E:Z

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->H:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->g()Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->I:Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->y:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->z:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->B:I

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->G:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->y:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->z:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->F:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ay;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ay;)V

    return-void
.end method

.method public static a(I)Lcom/google/maps/api/android/lib6/gmm6/l/av;
    .locals 2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->F:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;

    return-object v0
.end method

.method public static c()Ljava/lang/Iterable;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a()I
.end method

.method public a(ILcom/google/maps/api/android/lib6/gmm6/o/bh;)I
    .locals 0

    return p1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->G:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->G:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/String;ZLcom/google/maps/api/android/lib6/gmm6/m/b/g;)Lcom/google/maps/api/android/lib6/gmm6/m/b/f;
    .locals 6

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;

    if-eqz p2, :cond_1

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->I:Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;

    move-object v1, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;-><init>(Ljava/lang/String;ILcom/google/maps/api/android/lib6/gmm6/m/b/ag;Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/b/g;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a()I

    move-result v2

    goto :goto_1
.end method

.method public abstract a(Lcom/google/maps/api/android/lib6/b/o;Landroid/content/res/Resources;Ljava/util/Locale;Ljava/io/File;ZZ)Lcom/google/maps/api/android/lib6/gmm6/m/y;
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public b()Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->f()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    const/16 v2, 0x100

    mul-int/lit8 v1, v1, 0x20

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;-><init>(I)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->G:I

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract g()Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne p0, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    goto :goto_1
.end method
