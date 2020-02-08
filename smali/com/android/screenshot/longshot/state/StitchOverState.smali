.class public Lcom/android/screenshot/longshot/state/StitchOverState;
.super Lcom/android/screenshot/longshot/state/StitchNextState;
.source "StitchOverState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchOverState"


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/state/LongshotContext;)V
    .locals 0
    .param p1, "stateContext"    # Lcom/android/screenshot/longshot/state/LongshotContext;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/screenshot/longshot/state/StitchNextState;-><init>(Lcom/android/screenshot/longshot/state/LongshotContext;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lcom/android/screenshot/longshot/task/JoinTask;
    .locals 4

    .line 24
    new-instance v0, Lcom/android/screenshot/longshot/task/StitchOverTask;

    iget-object v1, p0, Lcom/android/screenshot/longshot/state/StitchOverState;->mJoinCache:Lcom/android/screenshot/longshot/cache/JoinCache;

    iget-object v2, p0, Lcom/android/screenshot/longshot/state/StitchOverState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/android/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/screenshot/longshot/state/StitchOverState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/android/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/screenshot/longshot/task/StitchOverTask;-><init>(Lcom/android/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/android/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getPageText()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/android/screenshot/longshot/state/StitchNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/android/screenshot/longshot/state/StitchNextState;->getSuccessText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareSuccess()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/StitchOverState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    .line 30
    return-void
.end method
