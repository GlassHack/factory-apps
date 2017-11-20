.class public Lcom/google/wireless/gdata2/ConflictDetectedException;
.super Lcom/google/wireless/gdata2/GDataException;
.source "SourceFile"


# instance fields
.field private final conflictingEntry:Lcom/google/wireless/gdata2/a/a;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/a/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/wireless/gdata2/GDataException;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/wireless/gdata2/ConflictDetectedException;->conflictingEntry:Lcom/google/wireless/gdata2/a/a;

    .line 24
    return-void
.end method


# virtual methods
.method public getConflictingEntry()Lcom/google/wireless/gdata2/a/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/wireless/gdata2/ConflictDetectedException;->conflictingEntry:Lcom/google/wireless/gdata2/a/a;

    return-object v0
.end method
