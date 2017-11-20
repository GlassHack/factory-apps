.class public final Lcom/google/android/youtube/core/player/overlay/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/overlay/k;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/overlay/k;)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/overlay/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->a:Lcom/google/android/youtube/core/player/overlay/k;

    .line 40
    iput v1, p0, Lcom/google/android/youtube/core/player/overlay/j;->b:I

    .line 41
    iput v1, p0, Lcom/google/android/youtube/core/player/overlay/j;->c:I

    .line 42
    iput v1, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->e:I

    .line 44
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    .line 129
    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    .line 130
    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    .line 131
    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    .line 132
    const/16 v0, 0x59

    if-eq p0, v0, :cond_0

    .line 133
    const/16 v0, 0x56

    if-eq p0, v0, :cond_0

    .line 134
    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    .line 135
    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    .line 136
    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    .line 137
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    .line 138
    const/16 v0, 0xaf

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 128
    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    .line 120
    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    .line 121
    const/16 v0, 0x56

    if-eq p0, v0, :cond_0

    .line 122
    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    .line 123
    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    .line 124
    const/16 v0, 0xaf

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 119
    goto :goto_0
.end method


# virtual methods
.method public final a(III)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/youtube/core/player/overlay/j;->b:I

    .line 48
    iput p2, p0, Lcom/google/android/youtube/core/player/overlay/j;->c:I

    .line 49
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x59

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    .line 52
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->e:I

    if-eq p1, v0, :cond_0

    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 56
    :cond_0
    if-eq p1, v4, :cond_1

    .line 57
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_5

    .line 58
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->b:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->c:I

    if-eq v0, v3, :cond_3

    .line 59
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 60
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->b:I

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    .line 61
    iput p1, p0, Lcom/google/android/youtube/core/player/overlay/j;->e:I

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->a:Lcom/google/android/youtube/core/player/overlay/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/k;->a()V

    .line 64
    :cond_2
    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    if-ne p1, v4, :cond_4

    .line 65
    const/16 v0, -0x4e20

    :goto_1
    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    .line 66
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/j;->c:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->a:Lcom/google/android/youtube/core/player/overlay/k;

    iget v2, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/player/overlay/k;->a(I)V

    :cond_3
    move v0, v1

    .line 69
    goto :goto_0

    .line 65
    :cond_4
    const/16 v0, 0x4e20

    goto :goto_1

    .line 70
    :cond_5
    invoke-static {p1}, Lcom/google/android/youtube/core/player/overlay/j;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_6
    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v0, v1

    .line 94
    goto :goto_0

    .line 79
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->a:Lcom/google/android/youtube/core/player/overlay/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/k;->b()V

    goto :goto_2

    .line 82
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->a:Lcom/google/android/youtube/core/player/overlay/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/k;->c()V

    goto :goto_2

    .line 86
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->a:Lcom/google/android/youtube/core/player/overlay/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/k;->d()V

    goto :goto_2

    .line 89
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/j;->a:Lcom/google/android/youtube/core/player/overlay/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/k;->e()V

    goto :goto_2

    :cond_7
    move v0, v2

    .line 96
    goto :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
        0xaf -> :sswitch_3
    .end sparse-switch
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 100
    const/16 v2, 0x59

    if-eq p1, v2, :cond_0

    .line 101
    const/16 v2, 0x5a

    if-ne p1, v2, :cond_2

    .line 102
    :cond_0
    iget v2, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/google/android/youtube/core/player/overlay/j;->e:I

    if-ne p1, v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/j;->a:Lcom/google/android/youtube/core/player/overlay/k;

    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/overlay/k;->b(I)V

    .line 106
    iput v4, p0, Lcom/google/android/youtube/core/player/overlay/j;->d:I

    .line 107
    iput v1, p0, Lcom/google/android/youtube/core/player/overlay/j;->e:I

    .line 115
    :cond_1
    :goto_0
    return v0

    .line 111
    :cond_2
    invoke-static {p1}, Lcom/google/android/youtube/core/player/overlay/j;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 115
    goto :goto_0
.end method
