.class public final Lcom/google/android/gms/location/places/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/Set;

.field private static final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x15

    new-array v1, v1, [Lcom/google/android/gms/location/places/PlaceType;

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->aS:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->aT:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->aU:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->aW:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->aX:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ba:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bf:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bg:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bh:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bi:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bj:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bk:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bl:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bm:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bn:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bo:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bp:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bq:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->br:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bs:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bt:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/r;->a:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/google/android/gms/location/places/PlaceType;

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->aS:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->aT:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->aU:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->aW:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->ba:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bg:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bh:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bi:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/r;->b:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x7d

    new-array v1, v1, [Lcom/google/android/gms/location/places/PlaceType;

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->a:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->b:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->c:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->d:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/location/places/PlaceType;->e:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->f:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->g:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->h:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->i:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->j:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->k:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->l:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->m:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->n:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->o:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->p:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->q:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->r:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->s:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->t:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->u:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->v:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->w:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->x:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->y:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->z:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->A:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->B:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->C:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->D:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->E:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->F:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->G:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->H:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->I:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->J:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->K:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->L:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->M:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->N:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->O:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->P:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->Q:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->R:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->S:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->T:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->U:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->V:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->W:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->X:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->Y:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->Z:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aa:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ab:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x36

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ac:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x37

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ad:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x38

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ae:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x39

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->af:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ag:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ah:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ai:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aj:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ak:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->al:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x40

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->am:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x41

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->an:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x42

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ao:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x43

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ap:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x44

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aq:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x45

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ar:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x46

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->as:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x47

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->at:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x48

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->au:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x49

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->av:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aw:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ax:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ay:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->az:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aA:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aB:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x50

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aC:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aD:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x52

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aE:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x53

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aF:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x54

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aG:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x55

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aH:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x56

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aI:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x57

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aJ:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x58

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aK:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x59

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aL:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aM:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aN:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aO:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aP:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aQ:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aR:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x60

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aS:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x61

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aT:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x62

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aU:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x63

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aV:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x64

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aW:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x65

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aX:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x66

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x67

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aZ:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x68

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->ba:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x69

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bb:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bc:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bd:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->be:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bf:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bg:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bh:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x70

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bi:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x71

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bj:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x72

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bk:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x73

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bl:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x74

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bm:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x75

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bn:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x76

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bo:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x77

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bp:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x78

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bq:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x79

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->br:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bs:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bt:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->bu:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/r;->c:Ljava/util/Set;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gms/location/places/r;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/location/places/r;->d:Ljava/util/HashMap;

    .line 205
    sget-object v0, Lcom/google/android/gms/location/places/r;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    .line 206
    sget-object v2, Lcom/google/android/gms/location/places/r;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/google/android/gms/location/places/r;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    return-object v0
.end method
