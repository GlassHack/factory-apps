.class public final Lcom/google/android/location/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:Ljava/util/List;

.field private static final m:Ljava/util/List;

.field private static final n:Ljava/util/Set;

.field private static o:Lcom/google/android/location/av;


# instance fields
.field public a:Z

.field public final b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lcom/google/android/location/f/ai;

.field public j:Lcom/google/android/location/f/ai;

.field public k:Z

.field private final p:Ljava/util/ArrayList;

.field private q:Ljava/lang/Object;

.field private final r:Lcom/google/android/location/os/at;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 62
    new-array v2, v8, [Ljava/lang/Integer;

    const/16 v0, 0x136

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v0, 0x137

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const/16 v0, 0x138

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const/16 v0, 0x139

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const/16 v3, 0x13a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const/16 v3, 0x13b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const/16 v3, 0x13c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 65
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 66
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/av;->l:Ljava/util/List;

    .line 71
    new-array v2, v7, [[Ljava/lang/Integer;

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v3, 0x87f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object v0, v2, v1

    new-array v0, v6, [Ljava/lang/Integer;

    const/16 v3, 0x900

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v3, 0x1dff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object v0, v2, v5

    new-array v0, v6, [Ljava/lang/Integer;

    const/16 v3, 0x543f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v3, 0x547e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object v0, v2, v6

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 74
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 75
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/av;->m:Ljava/util/List;

    .line 80
    const/16 v0, 0x50

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    const/16 v2, 0x8

    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x41

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const/16 v3, 0x45

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const/16 v3, 0x47

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const/16 v3, 0x6f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const/16 v3, 0x83

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const/16 v3, 0x88

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const/16 v3, 0xd3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const/16 v3, 0x101

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const/16 v3, 0x103

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const/16 v3, 0x105

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const/16 v3, 0x107

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const/16 v3, 0x137

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const/16 v3, 0x140

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const/16 v3, 0x142

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const/16 v3, 0x144

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const/16 v3, 0x146

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const/16 v3, 0x148

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const/16 v3, 0x14a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const/16 v3, 0x183

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const/16 v3, 0x185

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const/16 v3, 0x187

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const/16 v3, 0x189

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const/16 v3, 0x18b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const/16 v3, 0x240

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const/16 v3, 0x242

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const/16 v3, 0x246

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const/16 v3, 0x2bf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const/16 v3, 0x2e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const/16 v3, 0x2e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const/16 v3, 0x457

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const/16 v3, 0x458

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const/16 v3, 0x459

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const/16 v3, 0x4c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const/16 v3, 0x4c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const/16 v3, 0x4c6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x502

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x504

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x521

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x523

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x531

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x581

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x583

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x5a3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x5f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x3a

    const/16 v3, 0x5f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x3b

    const/16 v3, 0x602

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x3c

    const/16 v3, 0x621

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x3d

    const/16 v3, 0x62d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x3e

    const/16 v3, 0x662

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x3f

    const/16 v3, 0x682

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x40

    const/16 v3, 0x684

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x41

    const/16 v3, 0x6a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x42

    const/16 v3, 0x76d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x43

    const/16 v3, 0x1004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x44

    const/16 v3, 0x1005

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x45

    const/16 v3, 0x100e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x46

    const/16 v3, 0x1018

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x47

    const/16 v3, 0x1022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x48

    const/16 v3, 0x102c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x1036

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x1111

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0x1112

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0x1113

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0x1664

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0x1666

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x4f

    const/16 v3, 0x168c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 86
    new-instance v2, Ljava/util/HashSet;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 88
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 89
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/av;->n:Ljava/util/Set;

    .line 93
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/os/at;)V
    .locals 5

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/av;->p:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/av;->q:Ljava/lang/Object;

    .line 112
    iput-boolean v2, p0, Lcom/google/android/location/av;->c:Z

    .line 114
    iput-boolean v3, p0, Lcom/google/android/location/av;->d:Z

    .line 116
    iput-boolean v2, p0, Lcom/google/android/location/av;->e:Z

    .line 118
    iput-boolean v2, p0, Lcom/google/android/location/av;->f:Z

    .line 120
    iput-boolean v2, p0, Lcom/google/android/location/av;->g:Z

    .line 124
    iput-boolean v2, p0, Lcom/google/android/location/av;->h:Z

    .line 126
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/av;->i:Lcom/google/android/location/f/ai;

    .line 129
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/av;->j:Lcom/google/android/location/f/ai;

    .line 132
    iput-boolean v2, p0, Lcom/google/android/location/av;->k:Z

    .line 135
    iput-object p1, p0, Lcom/google/android/location/av;->r:Lcom/google/android/location/os/at;

    .line 136
    invoke-interface {p1}, Lcom/google/android/location/os/at;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/av;->a:Z

    .line 137
    iput-boolean v3, p0, Lcom/google/android/location/av;->b:Z

    .line 138
    invoke-direct {p0}, Lcom/google/android/location/av;->f()V

    .line 139
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SCollectionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initial state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/av;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lcom/google/android/location/os/at;)Lcom/google/android/location/av;
    .locals 2

    .prologue
    .line 147
    const-class v1, Lcom/google/android/location/av;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/av;->o:Lcom/google/android/location/av;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/google/android/location/av;

    invoke-direct {v0, p0}, Lcom/google/android/location/av;-><init>(Lcom/google/android/location/os/at;)V

    sput-object v0, Lcom/google/android/location/av;->o:Lcom/google/android/location/av;

    .line 150
    :cond_0
    sget-object v0, Lcom/google/android/location/av;->o:Lcom/google/android/location/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(II)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 440
    packed-switch p0, :pswitch_data_0

    .line 452
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 455
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :pswitch_0
    if-ltz p1, :cond_0

    sget-object v0, Lcom/google/android/location/av;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 447
    :pswitch_1
    if-ltz p1, :cond_0

    sget-object v0, Lcom/google/android/location/av;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p1, :cond_1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_1

    sget-object v0, Lcom/google/android/location/av;->n:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    .line 410
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 412
    :cond_0
    return-object p1
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 159
    const-class v0, Lcom/google/android/location/av;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/google/android/location/av;->o:Lcom/google/android/location/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit v0

    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Lcom/google/android/location/av;
    .locals 3

    .prologue
    .line 174
    const-class v1, Lcom/google/android/location/av;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/av;->o:Lcom/google/android/location/av;

    const-string v2, "Class not initialized, please call init()."

    invoke-static {v0, v2}, Lcom/google/android/location/p/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/google/android/location/av;->o:Lcom/google/android/location/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d(Z)Lcom/google/android/location/f/ai;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    invoke-direct {p0}, Lcom/google/android/location/av;->e()Z

    move-result v3

    .line 281
    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/av;->d:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/location/av;->k:Z

    if-nez v2, :cond_2

    move v2, v0

    .line 282
    :goto_0
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    iget-boolean v4, p0, Lcom/google/android/location/av;->c:Z

    if-eqz v4, :cond_0

    move v1, v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 284
    if-nez v1, :cond_1

    .line 285
    if-eqz v3, :cond_5

    .line 286
    if-eqz v2, :cond_4

    .line 288
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 295
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    return-object v0

    :cond_2
    move v2, v1

    .line 281
    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/location/av;->d:Z

    goto :goto_0

    .line 289
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/av;->c:Z

    if-nez v0, :cond_5

    .line 290
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 292
    :cond_5
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method private e(Z)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 422
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/av;->r:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->l()Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 426
    :goto_1
    return-object v0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/av;->r:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_2
    const-string v1, "us"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/android/location/av;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/av;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/av;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/av;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/av;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Lcom/google/android/location/av;->e()Z

    move-result v0

    iget-boolean v3, p0, Lcom/google/android/location/av;->h:Z

    if-ne v0, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/location/av;->d(Z)Lcom/google/android/location/f/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/location/av;->i:Lcom/google/android/location/f/ai;

    iget-object v3, v3, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    if-ne v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/google/android/location/av;->d(Z)Lcom/google/android/location/f/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/location/av;->j:Lcom/google/android/location/f/ai;

    iget-object v3, v3, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 315
    :goto_0
    invoke-direct {p0}, Lcom/google/android/location/av;->e()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/location/av;->h:Z

    invoke-direct {p0, v1}, Lcom/google/android/location/av;->d(Z)Lcom/google/android/location/f/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/av;->i:Lcom/google/android/location/f/ai;

    invoke-direct {p0, v2}, Lcom/google/android/location/av;->d(Z)Lcom/google/android/location/f/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/av;->j:Lcom/google/android/location/f/ai;

    .line 316
    if-eqz v0, :cond_4

    .line 317
    iget-object v1, p0, Lcom/google/android/location/av;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/av;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/e;

    .line 319
    invoke-interface {v0, p0}, Lcom/google/android/location/p/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    move v0, v1

    .line 312
    goto :goto_0

    .line 321
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "SCollectionPolicy"

    invoke-virtual {p0}, Lcom/google/android/location/av;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/location/f/ai;
    .locals 1

    .prologue
    .line 258
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/location/av;->j:Lcom/google/android/location/f/ai;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/av;->i:Lcom/google/android/location/f/ai;

    goto :goto_0
.end method

.method public final declared-synchronized a(IIZ)V
    .locals 2

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/location/p/h;->a(II)F

    move-result v1

    if-eqz p3, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    :goto_0
    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/location/av;->c:Z

    .line 362
    invoke-direct {p0}, Lcom/google/android/location/av;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 360
    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/location/f/ag;)V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/google/android/location/f/ag;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/av;->f:Z

    .line 481
    invoke-direct {p0}, Lcom/google/android/location/av;->f()V

    .line 482
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/location/f/g;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 372
    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/location/av;->e:Z

    .line 373
    invoke-direct {p0}, Lcom/google/android/location/av;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 372
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/location/f/g;->g()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/location/f/g;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/location/f/g;->e()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/location/av;->e(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2}, Lcom/google/android/location/av;->a(II)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/location/av;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/google/android/location/av;->e(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v3}, Lcom/google/android/location/av;->a(II)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/location/av;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v2, :cond_2

    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_2

    const-string v3, "SCollectionPolicy"

    const-string v4, "Home country unknown."

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v2, v1}, Lcom/google/android/location/av;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/location/p/e;)V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/android/location/av;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    if-nez p1, :cond_0

    .line 188
    monitor-exit v1

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/av;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 497
    if-nez p2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "SCollectionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_2
    sget-object v0, Lcom/google/android/location/os/at;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 503
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SCollectionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoing activity events from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_3
    iput-boolean p1, p0, Lcom/google/android/location/av;->k:Z

    .line 507
    invoke-direct {p0}, Lcom/google/android/location/av;->f()V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/location/p/e;)V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/android/location/av;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    if-nez p1, :cond_0

    .line 200
    monitor-exit v1

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/av;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 203
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized b(Z)V
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/location/av;->d:Z

    .line 353
    invoke-direct {p0}, Lcom/google/android/location/av;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/google/android/location/av;->g:Z

    .line 486
    invoke-direct {p0}, Lcom/google/android/location/av;->f()V

    .line 487
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/location/av;->h:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/google/android/location/av;->g:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 337
    const-string v0, "[canEnableForScheduler: %s, canEnableForCollector: %s, canEnableForSensorCollector: %s, enabledInClient: %s, enabledInServer: %s, hasRequiredSensors: %s, screenOn: %s, isBatteryHealthy: %s, isInUsAccordingToNetwork: %s, nlpEnabled: %s, gmmInForeground: %s]"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/location/av;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/av;->i:Lcom/google/android/location/f/ai;

    iget-object v3, v3, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/location/av;->j:Lcom/google/android/location/f/ai;

    iget-object v3, v3, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/android/location/av;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/android/location/av;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/android/location/av;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/android/location/av;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/android/location/av;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/android/location/av;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/android/location/av;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/location/av;->k:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
