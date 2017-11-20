.class final enum Lcom/google/glass/note/NoteManager$Type$2;
.super Lcom/google/glass/note/NoteManager$Type;
.source "NoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/note/NoteManager$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/note/NoteManager$Type;-><init>(Ljava/lang/String;ILcom/google/glass/note/NoteManager$1;)V

    return-void
.end method


# virtual methods
.method getDelayToPost(I)J
    .locals 5
    .param p1, "timesViewed"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "%d is not valid."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    .line 93
    :pswitch_0
    const-wide/16 v0, 0xfa0

    .line 96
    :goto_1
    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x1770

    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getDuration()J
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method
