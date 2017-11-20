.class final enum Lcom/google/glass/note/NoteManager$Type$4;
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
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/note/NoteManager$Type;-><init>(Ljava/lang/String;ILcom/google/glass/note/NoteManager$1;)V

    return-void
.end method


# virtual methods
.method getDelayToPost(I)J
    .locals 2
    .param p1, "timesViewed"    # I

    .prologue
    .line 124
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method getDuration()J
    .locals 2

    .prologue
    .line 119
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method
