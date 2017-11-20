.class public final Lcom/google/glass/note/NoteManager$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "NoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/note/NoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/LazySingletonProvider",
        "<",
        "Lcom/google/glass/note/NoteManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/note/NoteManager$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lcom/google/glass/note/NoteManager$Provider;

    invoke-direct {v0}, Lcom/google/glass/note/NoteManager$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/note/NoteManager$Provider;->INSTANCE:Lcom/google/glass/note/NoteManager$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/note/NoteManager$Provider;
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lcom/google/glass/note/NoteManager$Provider;->INSTANCE:Lcom/google/glass/note/NoteManager$Provider;

    return-object v0
.end method
